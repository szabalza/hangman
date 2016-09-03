require './lib/hangman'

describe Hangman do
    before(:each) do
        @hangman= Hangman.new
    end
    it 'Al solicitar la palabra secreta retorna "_ _ _ _ _ _ _"' do
        palabra =  @hangman.getSecretWord
        expect(palabra).to be == "_ _ _ _ _ _ _"
    end
    it 'Al ingresar la letra "a" la las letras conocidas son "a"' do
        @hangman.ingresarLetra "a"
        letras =  @hangman.getLetras
        expect(letras).to be == "a"
    end
    it 'Al ingresar la letra "a" la palabra secreta retorna "_ a _ _ _ a _"' do
        @hangman.ingresarLetra "a"
        palabra =  @hangman.getSecretWord
        expect(palabra).to be == "_ a _ _ _ a _"
    end
    it 'Al ingresar las letras de "hangman" gano es "true"' do
        @hangman.ingresarLetra "a"
        @hangman.ingresarLetra "n"
        @hangman.ingresarLetra "m"
        @hangman.ingresarLetra "h"
        @hangman.ingresarLetra "g"
        gano = @hangman.gano
        expect(gano).to be == true
    end
end
