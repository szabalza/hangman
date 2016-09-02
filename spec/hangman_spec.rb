require './lib/hangman'

describe Hangman do
    before(:each) do
        @hangman= Hangman.new
    end
    it 'Al solicitar la palabra secreta retorna "_ _ _ _ _ _ _"' do
        palabra =  @hangman.getSecretWord
        expect(palabra).to be == "_ _ _ _ _ _ _"
    end
end
