require_relative 'extractor'
require_relative 'Printer'

class Crawler
  def initialize(base_url, extractor=Extractor.new(), printer=Printer.new())
    @base_url = base_url
    @extractor = extractor
    @printer = printer
  end

  def start_crawl
    child_links = @extractor.extract_links(@base_url)
    @printer.print_links(@base_url, child_links)
    puts "finished crawling"
  end
end
