require "./Intervalo"
i1 = Intervalo.new(2, 20)
i2 = Intervalo.new(1, 5)
i3 = Intervalo.new(3, 15)
i4 = Intervalo.new(2, 10)
i=[i1,i2,i3,i4]
longitudes = i.collect{|interv| interv.length}
p longitudes