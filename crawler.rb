require_relative 'extractor'
require_relative 'Printer'

class Crawler
  def initialize(base_url, counter_total=1, extractor=Extractor.new(), printer=Printer.new())
    @base_url = base_url
    @extractor = extractor
    @printer = printer
    @counter_total = counter_total
    @counter = 0
  end

  def start_crawl
    # links[@base_url] = []
    parent_links = [@base_url]

    while @counter < @counter_total
      child_links = crawl(parent_links)
      @counter+=1
      parent_links = child_links
    end
    puts "finished crawling"
  end

  def crawl(parent_links)
    links_list = []
    parent_links.each do |parent_link|
      begin
        child_links = @extractor.extract_links(parent_link)
        @printer.print_links(parent_link, child_links)
        links_list += child_links
      rescue
        puts "No data for parent link #{parent_link}"
      end
    end

    links_list
  end
end
