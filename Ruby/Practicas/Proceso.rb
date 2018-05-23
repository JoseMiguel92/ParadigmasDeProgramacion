# Clase Proceso
class Proceso
  def initialize(id,parentid,name,memory)
    @id = id
    @parentid = parentid
    @name = name
    @memory = memory
  end
  attr_reader :id, :parentid, :name, :memory

  def to_s
    "#{@name}, #{@id}, #{@parentid}, #{@memory}"
  end

  def <=>(other)
    @memory <=> other.memory
  end
end