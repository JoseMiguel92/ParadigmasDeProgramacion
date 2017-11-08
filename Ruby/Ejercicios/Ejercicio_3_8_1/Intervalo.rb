# Se pide definir la clase Intervalo y los métodos correspondientes a la funcionalidad especificada
class Intervalo
    def initialize(lower,upper)
        @lower = lower
        @upper = upper
    end

    def to_s
        "(#{@lower},#{@upper})"
    end

    def length()
        @upper - @lower
    end

    def contains(number)
        @lower <= number && number >= @upper
    end

    def equals(other)
        @lower == other.lower && @upper == other.upper
    end

    def lower
        @lower
    end

    def upper
        @upper
    end

    def alargar!(v)
        @upper=@upper + v
    end

end