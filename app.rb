require 'sinatra'
require './lib/hangman'

get '/' do
    @@hangman = Hangman.new
    @secret = @@hangman.getSecretWord
    @gano = @@hangman.gano
    @perdio = @@hangman.perdio
    @errores = @@hangman.getErrores
    @palabra = @@hangman.revelarPalabra
    @multiplayer = @@hangman.isMultiplayer
    @gamestarted = @@hangman.isGameStarted
    erb :index
end

post '/letra' do
    @@hangman.ingresarLetra params[:letra] 
    @secret = @@hangman.getSecretWord
    @gano = @@hangman.gano
    @perdio = @@hangman.perdio
    @errores = @@hangman.getErrores
    @palabra = @@hangman.revelarPalabra
    @multiplayer = @@hangman.isMultiplayer
    @gamestarted = @@hangman.isGameStarted
    erb :index
end

post '/palabra' do
#    @@hangman = Hangman.new
    @@hangman.setPalabra params[:palabra] 
    @secret = @@hangman.getSecretWord
    @gano = @@hangman.gano
    @perdio = @@hangman.perdio
    @errores = @@hangman.getErrores
    @palabra = @@hangman.revelarPalabra
    @multiplayer = @@hangman.isMultiplayer
    @gamestarted = @@hangman.isGameStarted
    erb :index    
end

post '/setmode' do 
    @@hangman = Hangman.new
    @@hangman.setPlayMode params[:playmode] 
    @secret = @@hangman.getSecretWord
    @gano = @@hangman.gano
    @perdio = @@hangman.perdio
    @errores = @@hangman.getErrores
    @palabra = @@hangman.revelarPalabra
    @multiplayer = @@hangman.isMultiplayer
    @gamestarted = @@hangman.isGameStarted
    erb :index
end

post '/reiniciar' do
    @@hangman = Hangman.new
    @secret = @@hangman.getSecretWord
    @gano = @@hangman.gano
    @perdio = @@hangman.perdio
    @errores = @@hangman.getErrores
    @palabra = @@hangman.revelarPalabra
    @multiplayer = @@hangman.isMultiplayer
    @gamestarted = @@hangman.isGameStarted
    erb :index
end
