require "./Viaje.rb"

class GestorViajes

    def initialize
        @origenes = Hash.new()
        @destinos = Hash.new()
        @viajes=[]
    end

    attr_accessor :viajes, :origenes, :destinos

    def addViaje(viaje)
        @viajes << viaje
        addDiccionario(@origenes,viaje.origen,viaje)
        addDiccionario(@destinos,viaje.destino,viaje)
    end

    def viajes_origen(origen)
        return @origenes[origen]
    end

    def viajes_destino(destino)
        return @destinos[destino]
    end

    def limite_duracion(limite)
        limite_duracion = @viajes.find_all(){|v|
                                                v.duracion <= limite}
    end

    private
    
    def addDiccionario(diccionario,origen,viaje)
        if (diccionario.include?(origen))
            diccionario[origen] << viaje
        else
            diccionario[origen] = [viaje]
        end
    end
end