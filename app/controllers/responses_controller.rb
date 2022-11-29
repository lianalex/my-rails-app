class ResponsesController < ApplicationController
  
  #http_basic_authenticate_with name: "admin", password: "password", only: :show
  
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




  def export
    @response = Response.find(params[:id])
  page_url = "http://localhost:3000/responses/" + params[:id].to_s
  response = HTTParty.get(page_url)
  puts "\n\nExporting...\n\n"
  
  File.open("Exports/SurveyResults/" + @response.id.to_s + ".txt", "w") {
    |file| file.write(
    "Q1: On a scale of 1 to 5, how advanced are your programming skills? 1: needing serious improvement 5: I am Pointdexter" + "\n" + @response.q1.to_s + "\n" +
    "Q2: On a scale of 1 to 5, do you believe this service has value? 1: by no means 5: absolutly" + "\n" + @response.q2.to_s + "\n" +
    "Q3: On a scale of 1 to 5, was the program easy to use? 1: difficult, 5: simple." + "\n" + @response.q3.to_s + "\n" +
    "Q4: Considering your complete experience with the program, how likely would you be to recommend it to a friend or colleague? On a scale of 1 to 5" + "\n" + @response.q4.to_s + "\n" +
    "Q5: Please state three things that you felt were unnecessary in the program?"+ "\n" + @response.q5 + "\n" + 
    "Q6: Please state three things that benefitted you the most from the program?"  + "\n" + @response.q6 + "\n" + 
    "Q7: Do you have any suggestions/comments that will help us make the program better?" + "\n" + @response.q7 + "\n" + 
    "Q8: Please briefly summarize how you go about designing a website from scratch." + "\n" + @response.q8 + "\n")
  }
  end
  
  

  private
    def response_params
      params.require(:response).permit(:q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8)
  end
end
