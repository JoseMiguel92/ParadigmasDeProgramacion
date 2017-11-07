class StringUtil

    def invertir(cadenas)
        resultado = []
        invertir = cadenas.each{|c| resultado << c.reverse!}
    end
end