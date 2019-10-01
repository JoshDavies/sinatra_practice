require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  "shh"
end

get '/cat' do
  @name = ["Mr. Cat", "Joshie", "Melvino"].sample
  erb(:index)
end
