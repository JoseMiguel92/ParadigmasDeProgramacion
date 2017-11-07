require './Lista'
p1 = Punto.new(1,5)
p2 = Punto.new(2,1)
p3 = Punto.new(3,6)
p4 = Punto.new(7,4)
l1 = Lista.new(p1)
puts "------"
l1.mostrar
puts "------"
l1.insertar(p2)
l1.insertar(p3)
l1.insertar(p4)
l1.mostrar
puts "------"
l1.eliminar(p2)
l1.mostrar
puts "------"
