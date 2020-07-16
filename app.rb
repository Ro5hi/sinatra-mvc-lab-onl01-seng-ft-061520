require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    
    erb :user_input
    
  end 
  
  private
  
  post '/piglatinize' do
    
    pl = Piglatinizer.new 
    @piglatin = pl.piglatinizer(params[:user_phrase])
    erb :results 
    
  end 
  
  
end