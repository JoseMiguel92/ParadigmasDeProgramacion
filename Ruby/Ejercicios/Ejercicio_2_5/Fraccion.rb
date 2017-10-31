class Fraccion
    def initialize(numerator,denominator)
        @numerator = numerator
        @denominator = denominator
    end

    attr_reader :numerator, :denominator

    def to_s
        "#{@numerator}/#{@denominator}"
    end

    def greater(other)
        compare(other) > 0
        #@numerator * other.denominator > @denominator * other.numerator
    end

    def equals(other)
        compare(other) == 0
        #@numerator * other.denominator == @denominator * other.numerator 
    end

    def lower(other)
        compare(other) < 0
        #@numerator * other.denominator < @denominator * other.numerator
    end

    private 
    def compare(other)
        @numerator * other.denominator - @denominator * other.numerator
    end
end