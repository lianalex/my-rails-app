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
      params.require(:scrape).permit(:targetURL, :title, :price, :availability)
    end
	
end
