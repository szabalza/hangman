require './lib/hangman'

describe Hangman do
    before(:each) do
        @hangman= Hangman.new
    end
    it 'Al solicitar la palabra secreta retorna una palabra' do
        palabra =  @hangman.getSecretWord
        expect(palabra).not_to be == ""
    end
    it 'Al ingresar la letra "a" la las letras conocidas son "a"' do
        @hangman.ingresarLetra "a"
        letras =  @hangman.getLetras
        expect(letras).to be == "a"
    end
    it 'Al ingresar la letra "a" la palabra secreta retorna "_ a _ _ _ a _"' do
        @hangman.setPalabra "hangman"
        @hangman.ingresarLetra "a"
        palabra =  @hangman.getSecretWord
        expect(palabra).to be == "_ a _ _ _ a _"
    end
    it 'Al ingresar las letras de "hangman" gano es "true"' do
        @hangman.setPalabra "hangman"
        @hangman.ingresarLetra "a"
        @hangman.ingresarLetra "n"
        @hangman.ingresarLetra "m"
        @hangman.ingresarLetra "h"
        @hangman.ingresarLetra "g"
        gano = @hangman.gano
        expect(gano).to be == true
    end
    it "Al solicitar una palabra aleatoria retorna una palabra" do
        palabra = @hangman.getPalabra    
        expect(palabra).not_to be == ""
    end
    it "Al ingresar las letras vai el conteo de errores es 2" do
        @hangman.setPalabra "hangman"
        @hangman.ingresarLetra "v"
        @hangman.ingresarLetra "a"
        @hangman.ingresarLetra "i"
        errores = @hangman.getErrores 
        expect(errores).to be == 2
    end
    it "Al ingresar 6 letras que no están en la palabra el jugador pierde" do
        @hangman.setPalabra "hangman"
        @hangman.ingresarLetra "i"
        @hangman.ingresarLetra "q"
        @hangman.ingresarLetra "w"
        @hangman.ingresarLetra "r"
        @hangman.ingresarLetra "t"
        @hangman.ingresarLetra "y"
        perdio = @hangman.perdio
        expect(perdio).to be == true
    end
    it "Al revelar la palabra esta se muestra" do
        @hangman.setPalabra "hangman"
        palabra = @hangman.revelarPalabra    
        expect(palabra).to be == "hangman"
    end
    it "Al setear modo 'multi' el juego es multiplayer" do
        @hangman.setPlayMode "multi"
        multiplayer = @hangman.getMultiplayer
        expect(multiplayer).to be == true
    end
end
