require_relative 'extractor'
require_relative 'Printer'

class Crawler
  def initialize(base_url, extractor=Extractor.new(), printer=Printer.new())
    @base_url = base_url
    @extractor = extractor
    @printer = printer
  end

  def start_crawl
    links = @extractor.extract_links(@base_url)
    @printer.print_links(links)
    links
  end
end
