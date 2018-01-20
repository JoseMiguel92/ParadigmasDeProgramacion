require './Identificador'

nif = "12345678A"

nif2 = "12345678-A"

nif3 = "12345678 A"

nif4 = "12345678/A"

nif5 = "A12345678"

iden = Identificador.new(nif)
iden2 = Identificador.new(nif2)
iden3 = Identificador.new(nif3)
iden4 = Identificador.new(nif4)
iden5 = Identificador.new(nif5)

puts iden
puts
puts iden2
puts
puts iden3
puts
puts iden4
puts
puts iden5