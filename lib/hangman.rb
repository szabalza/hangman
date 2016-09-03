class Hangman
    def initialize
        @diccionario = "exquisita sensibilidad bien irrecusable testimonio"
        @letras = ""
        @palabra = getPalabra
        @erroresPermitidos = 6
        @multiplayer = false
    end
    def getSecretWord 
        if perdio then
            (@palabra.split '').join ' '
        else
            filtered = (@palabra.split '').map {|c| if @letras.include? c then c else '_' end}
            return filtered.join ' '
        end
    end
    def ingresarLetra l
        @letras = @letras << l
    end
    def setPlayMode mode 
        @multiplayer = mode == "multi"
    end
    def getLetras 
        @letras
    end
    def gano 
         !perdio && getSecretWord.gsub('_','').gsub(' ','') == @palabra
    end
    def perdio 
        getErrores >= @erroresPermitidos
    end
    def setPalabra(palabra)
        @palabra = palabra
        @multiplayer = true
    end
    def getPalabra 
        split = @diccionario.split ' '
        len = split.length
        index = Random.new.rand(0..len-1)
        split[index]
    end
    def revelarPalabra 
        @palabra
    end
    def getMultiplayer 
        @multiplayer
    end
    def getErrores 
        filtered = (@letras.split '').map {|c| if @palabra.include? c then 0 else 1 end}
        filtered = filtered.inject(0){|sum,x| sum + x }
    end
end
