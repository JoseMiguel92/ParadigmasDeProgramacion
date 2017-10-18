#
i = 1
suma = 0
while i <= 10 do
    numero = gets.to_i
    puts numero if (numero)%2 == 0
    suma += numero
    i += 1
end
puts suma

for i in 0..9
    numero = gets.to_i
    if (numero)%2 == 0
        puts numero 
        suma += numero
    end
end
puts suma