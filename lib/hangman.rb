class Hangman
    def initialize
        @palabra = "hangman"
        @letras = ""
    end
    def getSecretWord 
        filtered = (@palabra.split '').map {|c| if @letras.include? c then c else '_' end}
        return filtered.join ' '
    end
    def ingresarLetra l
        @letras = @letras << l
    end
    def getLetras 
        @letras
    end
    def gano 
         getSecretWord.gsub('_','').gsub(' ','') == @palabra
    end
end
