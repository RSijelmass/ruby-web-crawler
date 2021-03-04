require_relative 'crawler'

url = "https://makers.tech/"
crawler = Crawler.new(url)
crawler.start_crawl
