class ScrapesController < ApplicationController
  def index
	@scrapes = Scrape.all
  end
  def show
    @scrape = Scrape.find(params[:id])
  end
  def new
    @scrape = Scrape.new
  end

  def create
    @scrape = Scrape.new(scrape_params)
	
	50.times do |i|
	
		@book = Book.new
		
		page_url = scrape_params[:targetURL] + "catalogue/page-#{i + 1}.html"  
		# send an HTTP GET request
		response = HTTParty.get(page_url)
		# parse HTML with Nokogiri
		document = Nokogiri::HTML4(response.body)
		# each book is contained in the HTML element article with its class set to product_pod
		books_containers = document.css('article.product_pod')
		books_containers.each do |container|
			bookTitle = container.css('h3 a').first['title']
			bookPrice = container.css('.price_color').text.delete('^0-9.')
			bookAvailability = container.css('.availability').text.strip
			
			@book = @scrape.books.new(title: bookTitle, price: bookPrice, availability: bookAvailability)
			
		end    
	end  

    if @scrape.save
      redirect_to @scrape
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @scrape = Scrape.find(params[:id])
  end

  def update
    @scrape = Scrape.find(params[:id])

    if @scrape.update(scrape_params)
      redirect_to @scrape
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @scrape = Scrape.find(params[:id])
    @scrape.destroy

    redirect_to '/scrapes', status: :see_other
  end

  private
    def scrape_params
      params.require(:scrape).permit(:title, :targetURL)
    end
	
end
