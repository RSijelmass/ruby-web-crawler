require_relative "../crawler"

RSpec.describe Crawler do
  it "should return a list of links from the main URL" do
    url = "https://www.bbc.co.uk/"
    mock_extractor = double("mock_extractor")
    crawler = Crawler.new(url, mock_extractor)
    
    expect(mock_extractor).to receive(:extract_links)
    crawler.start_crawl
  end
end
