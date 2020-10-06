require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @sq = @num ** 2
    "#{@sq}"
  end

  get "/say/:number/:phrase" do
    new = ""
    params[:number].to_i.times do
      new += params[:phrase]
      end
    new
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    a = "unable to perform op"
    case params[:operation]
  when "add"
      a = (num1+num2).to_s
  when "subtract"
      a = (num1-num2).to_s
  when "multiply"
      a = (num1*num2).to_s
  when "divide" 
     a = (num1/num2).to_s
    end
    a
  end

end