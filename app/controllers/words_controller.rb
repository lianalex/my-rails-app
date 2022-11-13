class WordsController < ApplicationController
  def index
	@words = Word.all
  end
  def show
	@word = Word.find(params[:id])
  end
  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)

    if @word.save
      redirect_to @word
    else
      render :new, status: :unprocessable_entity
    end
  end
  
    def edit
    @word = Word.find(params[:id])
  end

  def update
    @word = Word.find(params[:id])

    if @word.update(word_params)
      redirect_to @word
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @word = Word.find(params[:id])
    @word.destroy

    redirect_to '/pages', status: :see_other
  end
  
    private
    def word_params
      params.require(:word).permit(:image, :title, :p1, :subtitle1, :p2, :subtitle2, :p3)
    end
end
