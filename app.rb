require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    ((params[:number].to_i)**2).to_s
  end

  get '/say/:number/:phrase' do
    @repeat = params[:number].to_i
    @string = ""
    @repeat.times do
      @string += params[:phrase]
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

  end
end
