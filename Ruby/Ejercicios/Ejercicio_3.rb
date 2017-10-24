#Crear un programa vaya leyendo, de forma iterativa, un número de la entrada 
# estándar cada vez, hasta un total de 10 veces y por cada número que lea, si es par, 
# debe imprimirlo. Además, al final, debe imprimir el resultado de la suma de todos 
# los números leídos.
i = 1
suma = 0
while i <= 10 do
    numero = gets.to_i
    puts numero if (numero)%2 == 0
    suma += numero
    i += 1
end
puts suma
suma = 0
for i in 0..9
    numero = gets.to_i
    if (numero)%2 == 0
        puts numero 
    end
    suma += numero
end
puts suma