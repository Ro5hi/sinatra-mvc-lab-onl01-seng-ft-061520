require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    
    erb :user_input
    
  end 
  
  post '/piglatinize' do
    
    pl = Piglatinizer.new 
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results 
    
  end 
  
  post '/piglatinize again' do 
    
     pl = Piglatinizer.new 
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results  
    
  end 
    
  
  
end