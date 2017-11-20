# Clase Fecha
require 'date'
class Fecha
    def procesar_fecha(s_fecha)
        partes = s_fecha.scan(/([0-9]+)[\-\/\ ]([0-9]+)[\-\/\ ]([0-9]+)/)
        puts "#{partes[0][0]}-#{partes[0][1]}-#{partes[0][2]}"
        ##procesar_fecha = Date.new(partes[0][2].to_i,partes[0][1].to_i,partes[0][0].to_i)
    end
end