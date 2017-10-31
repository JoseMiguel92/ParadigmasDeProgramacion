#Crear un programa que lea una cadena de la entrada 
# estandar e imprima el resultado de aplicar sobre ella diferentes operaciones.
cadena = gets.chomp
puts cadena.upcase
puts cadena.downcase
puts cadena.swapcase
puts cadena.capitalize
puts cadena.delete('e')
puts cadena.insert(1,'aa')
puts cadena.reverse