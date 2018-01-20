# Clase Identificador (NIF)
class Identificador

    def initialize(nif)
        # @numero = nif[0..-2]
        # @letra = nif[-1]
        # partes = nif.split('-')
        # @numero = partes[0].to_i
        # @letra = partes[1]
        # Regex
        partes = nif.scan(/([a-zA-Z])?(\d{8})[\-\/\ ]?(\w)?/)
        
        @numero = partes[0][1]
        @letra = ((partes[0][0] == nil) ? partes[0][2] : partes[0][0])

    end

    attr_reader :numero, :letra

    def to_s
        "#{@numero} -- #{@letra}"
    end
end