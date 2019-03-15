require_relative 'config/environment'


  # Write your code here!
class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
  "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @result = params[:number].to_i*params[:number].to_i
    "#{@result}"
  end

  get '/say/:number/:phrase' do
   @the_product = ""
    @the_number = params[:number].to_i
    @the_phrase = params[:phrase]
    @the_number.times do
      @the_product += @the_phrase
      @the_product += "\n"
    end
    "#{@the_product}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    erb :saywords
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    erb :operation
  end
end