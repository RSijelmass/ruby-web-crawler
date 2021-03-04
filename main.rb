require_relative 'crawler'

url = "https://makers.tech/"
crawler = Crawler.new(url, 2)
crawler.start_crawl
