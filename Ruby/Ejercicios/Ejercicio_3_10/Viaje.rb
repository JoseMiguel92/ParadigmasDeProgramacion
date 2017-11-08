class Viaje
    def initialize(origen, destino, duracion)
        @origen = origen
        @destino = destino
        @duracion = duracion
    end

    attr_reader :origen, :destino, :duracion

    def to_s
        "#{@origen} - #{@destino} - #{@duracion}"
    end
end