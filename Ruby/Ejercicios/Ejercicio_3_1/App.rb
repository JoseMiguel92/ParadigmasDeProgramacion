require './Fraccion.rb'

fracciones = Array.new

f1 = Fraccion.new(1,3)

f2 = Fraccion.new(3,4)

f3 = Fraccion.new(2,5)


fracciones << f2
fracciones << f3
fracciones << f1

fracciones.sort!

puts fracciones