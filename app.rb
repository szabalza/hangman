require 'sinatra'
require './lib/hangman'

get '/' do
    @@hangman = Hangman.new
    @secret = @@hangman.getSecretWord
    @gano = @@hangman.gano
    erb :index
end

post '/letra' do
    @@hangman.ingresarLetra params[:letra] 
    @secret = @@hangman.getSecretWord
    @gano = @@hangman.gano
    erb :index
end


