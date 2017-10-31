x = ARGV.size
puts "Num argumentos: #{x}"
puts "--------"
todos = Array.new
x1 = Array.new
x2 = Array.new
ARGV.each do |cadena|
    numero = cadena.to_i
    todos << numero
    if (numero).even?
        x2 << numero
    else
        x1 << numero
    end
end
puts "ORIGINAL"
puts todos
puts "--------"
puts "IMPARES"
puts x1
puts "--------"
puts "PARES"
puts x2
puts "--------"