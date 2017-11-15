# Clase Identificador (NIF)
class Identificador

    def initialize(nif)
        # @numero = nif[0..-2]
        # @letra = nif[-1]
        # partes = nif.split('-')
        # @numero = partes[0].to_i
        # @letra = partes[1]

        partes = nif.scan(/(\d+)(\w)/)
        @numero = partes[0]
        @letra = partes[1]
    end

    attr_reader :numero, :letra

    def to_s
        "#{@numero} -- #{@letra}"
    end
end