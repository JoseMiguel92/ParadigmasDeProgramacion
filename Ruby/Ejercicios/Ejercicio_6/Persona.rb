class Persona
    def initialize(nombre,apellidos,fecha,edad)
        @nombre = nombre
        @apellidos = apellidos
        @fecha = fecha
        @edad = edad
    end

    def to_s
        "Nombre: #{@nombre}, Apellido: #{@apellidos}, Fech.Nac.: #{@fecha}, Edad: #{@edad}"
    end

end