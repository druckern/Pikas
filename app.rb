require 'sinatra'

get '/' do
	erb :home
end

get '/setup' do
 erb :setup
end
