require './Persona'
class Alumno < Persona
    def initialize(nombre,apellidos,fecha,edad,titulacion, matricula)
        super(nombre,apellidos,fecha,edad)
        @titulacion = titulacion
        @matricula = matricula
    end

    def to_s
        super + "Titulacion: #{@titulacion}, Matricula: #{@matricula}"
    end
end