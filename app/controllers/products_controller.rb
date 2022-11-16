class ProductsController < ApplicationController
  
  def index
	@products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end 
  
  def new
    @product = Product.new
	@words = Word.all
	@pages = Page.all
  end

  def create
    @product = Product.new(product_params)
	@words = Word.all
	@pages = Page.all
	
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @product = Product.find(params[:id])
	@words = Word.all
	@pages = Page.all
  end

  def update
    @product = Product.find(params[:id])
	@words = Word.all
	@pages = Page.all

    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to '/pages', status: :see_other
  end
  
  private
	def product_params
		params.require(:product).permit(:title, :htmlID, :cssID)
	end
  
end
