require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  "shh"
end

get '/random-cat' do
  @name = ["Mr. Cat", "Joshie", "Melvino"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
