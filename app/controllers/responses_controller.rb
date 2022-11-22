class ResponsesController < ApplicationController
  
  http_basic_authenticate_with name: "admin", password: "password", only: :show
  
  def index
    @responses = Response.all
  end
  
  def show
    @response = Response.find(params[:id])
  end
  
  def new
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)

    if @response.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
 
  def edit
    @response = Response.find(params[:id])
  end

  def update
    @response = Response.find(params[:id])

    if @response.update(response_params)
      redirect_to @response
    else
      render :edit, status: :unprocessable_entity
    end
  end
 
  def destroy
    @response = Response.find(params[:id])
    @response.destroy

    redirect_to root_path, status: :see_other
  end
  
  private
    def response_params
      params.require(:response).permit(:q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8)
  end
end
