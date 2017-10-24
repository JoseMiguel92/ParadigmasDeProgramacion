require './Fraccion'

f1 = Fraccion.new(1,3)

f2 = Fraccion.new(3,4)

f3 = Fraccion.new(2,6)

puts f1
puts f2
puts f3
puts f1.equals(f3)
puts f2.greater(f1)
puts f2.lower(f3)