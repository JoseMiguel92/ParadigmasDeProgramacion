require './Intervalo.rb'
todos = []
i1 = Intervalo.new(2,20)
i2 = Intervalo.new(1,5)
i3 = Intervalo.new(3,15)
i4 = Intervalo.new(2,10)
i5 = Intervalo.new(6,25)
i6 = Intervalo.new(2,7)

todos << i1
todos << i2
todos << i3
todos << i4
todos << i5
todos << i6

todos.each {|intervalo| 
    if intervalo.length <=10 
        puts intervalo
    end
}