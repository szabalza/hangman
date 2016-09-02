require 'sinatra'
require './lib/hangman'

get '/' do
    @@hangman = Hangman.new
    @secret = @@hangman.getSecretWord
    erb :index
end
