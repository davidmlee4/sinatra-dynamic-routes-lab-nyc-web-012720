require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    result = ''
     (params[:number].to_i).times do 
      result += params[:phrase]
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @solution = params[:number1].to_i + params[:number2].to_i
      "#{@solution}"
    elsif params[:operation] == "subtract"
      @solution = params[:number1].to_i - params[:number2].to_i
      "#{@solution}"
    elsif params[:operation] == "multiply"
      @solution = params[:number1].to_i * params[:number2].to_i
      "#{@solution}"
    elsif params[:operation] == "divide"
      @solution = (params[:number1].to_i)/(params[:number2].to_i)
      "#{@solution}"
    end
  end

end