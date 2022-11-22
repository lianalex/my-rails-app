class BooksController < ApplicationController
  def create
    @scrape = Scrape.find(params[:scrape_id])
    @book = @scrape.books.create(book_params)
    redirect_to scrape_path(@scrape)
  end

  def destroy
    @scrape = Scrape.find(params[:article_id])
    @book = @scrape.books.find(params[:id])
    @book.destroy
    redirect_to scrape_path(@scrape), status: :see_other
  end
  
  private
    def book_params
      params.require(:book).permit(:title, :price, :availability)
    end
end
