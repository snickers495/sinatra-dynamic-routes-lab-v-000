require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times.map {"#{@phrase}" }
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @final_string = ""
    [1..5].times.map do |count|
      num = params["word#{count}".to_sym]
      @final_string += num
    end
    @final_string
  end

  get '/:operation/:number1/:number2' do

  end
end
