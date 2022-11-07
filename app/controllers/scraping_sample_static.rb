###############
#  Extract three types of public data (title, price, availability) from https://books.toscrape.com/
###############
require 'httparty'
require 'nokogiri'
#require 'csv'

def scraping(url)
    #CSV.open('books.csv', 'w+', write_headers: true, headers: %w[Title Price Availability]) do |csv|
        books = []
        50.times do |i|
            page_url = url + "catalogue/page-#{i + 1}.html"  
            # send an HTTP GET request
            response = HTTParty.get(page_url)
            # parse HTML with Nokogiri
            document = Nokogiri::HTML4(response.body)
            # each book is contained in the HTML element article with its class set to product_pod
            books_containers = document.css('article.product_pod')
            books_containers.each do |container|
                title = container.css('h3 a').first['title']
                price = container.css('.price_color').text.delete('^0-9.')
                availability = container.css('.availability').text.strip
                book = [title, price, availability]
                #csv << book
                books << book 
            end    
        end
        puts "#{books}\n"
    #end
end

scraping('https://books.toscrape.com/')
