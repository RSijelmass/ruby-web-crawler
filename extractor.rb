require 'httparty'

class Extractor
  def extract_links(url)
    # GET request to url
    response = HTTParty.get(url)
    if response.code != 200
      raise "Failed to fetch info from URL #{url}"
    end

    links = extract_links_from_body(response.body)
    links
  end

  def extract_links_from_body(body)
    ["success"]
  end
end
