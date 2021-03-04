require_relative 'extractor'

class Crawler
  def initialize(base_url, extractor=Extractor.new())
    @base_url = base_url
    @extractor = extractor
  end

  def start_crawl
    links = @extractor.extract_links(@base_url)
    print links
    links
  end
end
