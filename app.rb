require 'sinatra'
require './lib/pikas'

get '/' do
	erb :home
end

get '/setup' do
 erb :setup
end

get '/jugar' do
	nivel = params["groupdificultad1"]
	if nivel == "1"
		@@nivelNombre = "Easy"
	end
	if nivel == "2"
		@@nivelNombre = "Medium"
	end
	if nivel == "3"
		@@nivelNombre = "High"
	end
	objPikas = Pikas.new
	@@numero = objPikas.GenerarNumero(nivel.to_i)
	@@nombre = params["nombre"]
	erb :jugar
end

post '/post' do
	@@numero = params["numero"]
	@@nombre = params["nombre"]
	@@nivelNombre = params["nivelNombre"]
	erb :jugar
end



