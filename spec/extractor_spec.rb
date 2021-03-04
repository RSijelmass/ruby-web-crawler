require_relative "../extractor"

RSpec.describe Extractor do
  let(:url_success) { "https://successful_url.com" }
  let(:url_fail) { "https://failing_url.com" }

  let(:extractor) { Extractor.new() }
  let(:response_body) do
    File.read("response_body.html")
  end

  before do
    stub_request(:get, url_success).
      to_return(status: 200, body: response_body, headers: {})
    stub_request(:get, url_fail).
      to_return(status: 500, body: response_body, headers: {})
  end

  context 'successful response from URL' do
    it 'should not raise error on successful GET request' do
      expect { extractor.extract_links(url_success) }.not_to raise_error
    end
    it 'should fetch links from response body' do
      expect(extractor.extract_links(url_success)).to include 'https://makers.tech'
    end
    it 'should not return empty strings or nil objects in the list' do
      links = extractor.extract_links(url_success)
      expect(links).to_not include ''
      expect(links).to_not include nil
    end
  end

  context 'non-successful response from URL' do
    it 'should raise error on a failing GET request' do
      expect { extractor.extract_links(url_fail) }.to raise_error
    end
  end
end
