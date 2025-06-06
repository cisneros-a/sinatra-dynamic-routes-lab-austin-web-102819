require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @username = params[:name]
    flipped = @username.reverse
    "#{flipped}"
  end 

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num * @num}"
  end 

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    arr = []
    @num.times do
      arr << @phrase
    end 
    arr.flatten
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == 'add'
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num1 - @num2}"
    elsif @operation == "multiply"
      "#{@num1 * @num2}"
    elsif @operation == "divide"
      "#{@num1 / @num2}"
    else
      'no'
    end 
  end 

end