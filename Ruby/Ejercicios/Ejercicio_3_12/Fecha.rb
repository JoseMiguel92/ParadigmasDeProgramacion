# Clase Fecha
require 'date'
class Fecha
    def procesar_fecha(s_fecha)
        partes = s_fecha.scan(/(\d+)(\d+)(\d+)/)
        puts partes[0][0]
        ##procesar_fecha = Date.new(partes[0][2].to_i,partes[0][1].to_i,partes[0][0].to_i)
    end
end