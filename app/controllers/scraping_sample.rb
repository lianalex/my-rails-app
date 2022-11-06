###############
#  Extract three types of public data (title, price, availability) from https://books.toscrape.com/
###############
require 'httparty'
require 'nokogiri'
require 'open-uri'

def scraping(url)
    books = []
    50.times do |i|
        url = url+"/catalogue/page-#{i + 1}.html"
        response = HTTParty.get(url)
        # parse HTML with Nokogiri
        document = Nokogiri::HTML4(response.body)
        # each book is contained in the HTML element article with its class set to product_pod
        books_containers = document.css('article.product_pod')
        books = []
        books_containers.each do |container|
            title = container.css('h3 a').first['title']
            price = container.css('.price_color').text.delete('^0-9.')
            availability = container.css('.availability').text.strip
            book = [title, price, availability]
            print book
            books << book 
        end        
    end
end

scraping('https://books.toscrape.com/')