#   Se quiere imprimir las capitales en orden alfabético
#   Además de lo anterior, que se imprima la posición en la lista de cada capital

    capitales = %w{Tirana Viena Baku Bruselas Roma Bratislava Atenas Oslo}

# con el método each asociando un bloque
#   capitales.each { |elemento| puts "Capital: " + elemento }
# con el método each a modo de iterador
#   capitales.each do |capital| puts "Capital: " + capital
# end

    # def each_with_index(capitales)
    #     for indice in 0..capitales.length-1
    #         yield(capitales[indice], indice)
    #     end
    # end

    def each_with_index(capitales)
        capitales.each{|capital| yield(capitales.index(capital), capital)}
    end

    capitales.sort!

    each_with_index(capitales){|indice, capital| puts "#{capital} en posicion #{indice}"}