require 'nokogiri'
require 'open-uri'

def scraping(url)
    parsed_data = Nokogiri::HTML.parse(URI.open(url))
    puts parsed_data.css("h3")
end

scraping('https://books.toscrape.com')