require_relative "../crawler"

RSpec.describe Crawler do
  let(:url) { "https://www.bbc.co.uk/" }
  let(:mock_extractor) { double("mock_extractor") }
  let(:mock_printer) { double("mock_printer") }
  let(:crawler) { Crawler.new(url, mock_extractor, mock_printer) }

  it 'should call the Extractor to fetch links and Printer to print print_links' do
    links_list = ['1','2','3']
    expect(mock_extractor).to receive(:extract_links).and_return(links_list)
    expect(mock_printer).to receive(:print_links).with(links_list)
    crawler.start_crawl
  end
end
