require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @return_string = ""
    params[:number].to_i.times do
      @return_string += params[:phrase]
    end
    @return_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @return_string = ""
    params.each{|word, value| @return_string += value += " "}
    @return_string[-1] = "."
    @return_string
  end
  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if @op == "add"
      return (@n1 + @n2).to_s
    elsif @op == "subtract"
      return (@n1 - @n2).to_s
    elsif @op == "multiply"
      return (@n1 * @n2).to_s
    elsif @op == "divide"
      return (@n1/@n2).to_s
    else
      "Please enter a valid operation"
    end
  end


end