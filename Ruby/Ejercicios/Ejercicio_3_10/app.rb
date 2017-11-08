require "./GestorViajes.rb"

v1 = Viaje.new("Madrid", "Valencia", 3)
v2 = Viaje.new("Madrid", "Sevilla", 5)
v3 = Viaje.new("Sevilla", "Valencia", 7)
v4 = Viaje.new("Mostoles", "Cadiz", 3)
v5 = Viaje.new("Toledo", "Barcelona", 3)

gestor = GestorViajes.new()

gestor.addViaje(v1)
gestor.addViaje(v2)
gestor.addViaje(v3)
gestor.addViaje(v4)
gestor.addViaje(v5)
puts "--------------------------"
puts gestor.viajes_origen("Madrid")
puts "--------------------------"
puts gestor.viajes_destino("Cadiz")
puts "--------------------------"
puts gestor.limite_duracion(5)
puts "--------------------------"