require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :homepage
  end 
  
  get '/bachelorbios' do
    erb :bios 
  end 
  
  get '/quiz' do 
    erb :bachelor_bachelorette
  end 
  
   get '/quiz_bachelor' do
    erb :quiz_bachelor 
  end
  
   get '/quiz_bachelorette' do
    erb :quiz_bachelorette 
  end
  
  get '/Corinne_Olympios' do 
    erb :Corinne_Bold
  end 
  
  get '/Alexis_Waters' do 
    erb :Alexis_Quirky
  end 
  
   get '/Bekah_Martinez' do 
    erb :Bekah_Charming
  end 
  
  get '/Kristina_Schulman' do 
    erb :Kristina_Nice
  end 
  
  get '/Chad_Johnson' do 
    erb :Chad_Bold
  end 
  
  get '/Daniel_Maguire' do 
    erb :Daniel_Quirky
  end 
  
  get '/Dean_Unglert' do 
    erb :Dean_Charming
  end 
  
  get '/Luke_Pell' do 
    erb :Luke_Nice
  end 
  
  post '/results_bachelor' do 
   @array =  params.values 
   @total = 0 
   @array.each do |result|
    @total += result.to_i 
  end 
  
  if @total <= 7 
    erb :Luke_Nice
  elsif @total <= 11 
    erb :Dean_Charming
  elsif @total <= 15
    erb :Daniel_Quirky
  elsif @total <= 20 
    erb :Chad_Bold
  end 
end 

  post '/results_bachelorette' do 
   @array =  params.values 
   @total = 0 
   @array.each do |result|
    @total += result.to_i 
  end 
  
  if @total <= 7 
    erb :Kristina_Nice
  elsif @total <= 11 
    erb :Bekah_Charming
  elsif @total <= 15
    erb :Alexis_Quirky
  elsif @total <= 20 
    erb :Corinne_Bold
  end 
end 
     

end

