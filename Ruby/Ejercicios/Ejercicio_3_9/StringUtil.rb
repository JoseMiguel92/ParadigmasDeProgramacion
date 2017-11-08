class StringUtil

    def invertir(cadenas)
        resultado = []
        invertir = cadenas.each{|c| resultado << c.reverse!}
    end

    def split(cadena)
        split = cadena.collect{
                                |palabra|palabra.split(" ")
        }
    end

    def find(cadena, buscamos)
        cadena.find{ |palabra| palabra.include?(buscamos)}
    end
end