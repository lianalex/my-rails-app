class SectionsController < ApplicationController
  def create
    @word = Word.find(params[:word_id])
    @section = @word.sections.create(section_params)
    redirect_to word_path(@word)
  end
 
  def destroy
    @word = Word.find(params[:word_id])
    @section = @word.sections.find(params[:id])
    @section.destroy
    redirect_to word_path(@word), status: :see_other
  end
  
  private
    def section_params
      params.require(:section).permit(:title, :tag, :body)
    end
end
