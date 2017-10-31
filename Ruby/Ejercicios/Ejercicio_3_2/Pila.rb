class Pila
    def initialize
        @pila = Array.new
    end

    def apilar(elemento)
        @pila.unshift(elemento)
    end

    def desapilar
        desapilar = @pila.shift()
    end

    def cima
        @pila.first()
    end
        
    def size
        @pila.length()
    end

    def esVacia?
        @pila.empty?()
    end

    def mostrar
        puts @pila
    end

    def to_s
        "#{@elemento}"
    end
end