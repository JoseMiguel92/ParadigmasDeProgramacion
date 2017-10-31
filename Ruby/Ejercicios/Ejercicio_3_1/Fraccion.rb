class Fraccion
    def initialize(numerator,denominator)
        @numerator = numerator
        @denominator = denominator
    end

    attr_reader :numerator, :denominator

    def to_s
        "#{@numerator}/#{@denominator}"
    end

=begin     
    def greater(other)
        self <=> other > 0
        #@numerator * other.denominator > @denominator * other.numerator
    end

    def equals(other)
        self <=> other == 0
        #@numerator * other.denominator == @denominator * other.numerator 
    end

    def lower(other)
        self <=> other < 0
        #@numerator * other.denominator < @denominator * other.numerator
    end 
=end
 
    def <=>(other)
        @numerator * other.denominator - @denominator * other.numerator
    end
end