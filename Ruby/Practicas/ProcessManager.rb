# Clase ProcessManager
require "Proceso"
class ProcessManager
  def initialize
    @processes = []
  end

  def addProcess(process)
    @processes << process
  end

  def each_process
    @processes.each() do |p|
      yield p
    end
  end

  def each_child_process(parent)
    children = @processes.find_all(){|process| process.parentid == parent.id}
    children.each do 
      |child| yield child
      each_child_process(child) do
        |grandchild| yield grandchild
      end
    end
  end

  def top_ten
    @processes.sort.reverse.first(10)
  end

  def memory
    memory = Hash.new
    @processes.each{|process|
      add_to_memory(memory,process.name,process.memory)
    }
    memory
  end
  
  def processesWithNameEach(lista)
    @processes.each{|p| 
      lista.each{|e|
        if(e == p.name)
          yield p
        end} 
    }
  end

  private

  def add_to_memory(dictionary,name,memory)
    if dictionary.include?(name)
      dictionary[name] = dictionary[name] + memory
    else
      dictionary[name] = memory
    end
  end
end