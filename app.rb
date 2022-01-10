require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello World"
end

get '/sheep' do 
  "baa"
end 

get '/random-cat' do 
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end 

get '/named-cat' do 
  @name = params[:name]+params[:colour]
  erb(:index)
end 
