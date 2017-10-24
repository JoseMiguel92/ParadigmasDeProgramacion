require './Intervalo.rb'
i1 = Intervalo.new(4,10)

puts i1

puts i1.length

puts i1.contains(5)

i2 = Intervalo.new(1,5)

puts i1.equals(i2)