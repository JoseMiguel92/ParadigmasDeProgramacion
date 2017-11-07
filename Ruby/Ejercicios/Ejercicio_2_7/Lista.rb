require './Punto'
class Lista
    def initialize(punto)
        @lista = Array.new
        @lista.push punto
    end

    def mostrar
        @lista.each do |p|
            puts p
        end
    end
    

    def insertar(punto)
        @lista.push punto
        @lista.sort!
    end

    def eliminar(punto)
        @lista.delete(punto)
    end

    def esta(punto)
        @lista.contains(punto)
    end

    def distancia(punto)
        @lista.each do |p|
            puts p
        end
    end

    def longitud
        @lista.length
    end
end
