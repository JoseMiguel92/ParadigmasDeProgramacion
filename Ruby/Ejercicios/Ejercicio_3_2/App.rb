require './Pila.rb'

pila = Pila.new
puts pila.esVacia?
puts "---------"
pila.apilar(15)
pila.apilar(90)
pila.apilar(33)
puts pila.esVacia?
puts "---------"
pila.mostrar
puts "---------"
puts "Tamaño"
puts pila.size
puts "---------"
puts "Cima"
puts pila.cima
pila.desapilar
puts "---------"
puts "Tamaño"
puts pila.size
puts "---------"
puts "Cima"
puts pila.cima