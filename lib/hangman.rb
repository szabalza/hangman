class Hangman
    def initialize
        @diccionario = "exquisita sensibilidad bien irrecusable testimonio"
        @letras = ""
        @palabra = getPalabra
        @erroresPermitidos = 6
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
    def perdio 
        getErrores == @erroresPermitidos
    end
    def setPalabra(palabra)
        @palabra = palabra
    end
    def getPalabra 
        split = @diccionario.split ' '
        len = split.length
        index = Random.new.rand(0..len-1)
        split[index]
    end
    def getErrores 
        filtered = (@letras.split '').map {|c| if @palabra.include? c then 0 else 1 end}
        filtered = filtered.inject(0){|sum,x| sum + x }
    end
end
