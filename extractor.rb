require 'httparty'
require 'nokogiri'

class Extractor
  def extract_links(url)
    response = HTTParty.get(url)
    if response.code != 200
      raise "Failed to fetch info from URL #{url}"
    end

    extract_links_from_body(response.body)
  end

  def extract_links_from_body(body)
    document = Nokogiri::HTML.parse(body)
    a_tags = document.xpath("//a")
    links = a_tags.select { |tag| tag[:href] != nil && tag[:href] != '' }
                  .map { |tag| tag[:href] }
    links
  end
end
