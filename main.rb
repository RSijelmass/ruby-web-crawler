require_relative 'crawler'

url = "https://www.bbc.co.uk/"
crawler = Crawler.new(url)
crawler.start_crawl
