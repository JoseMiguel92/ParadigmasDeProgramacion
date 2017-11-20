require './Fecha'
fecha = Fecha.new()
puts fecha.procesar_fecha("15-1-1998")
puts fecha.procesar_fecha("23 04 2015")
puts fecha.procesar_fecha("01/01/1970")