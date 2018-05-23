require "ProcessManager"

pm = ProcessManager.new

p1 = Proceso.new(1,0,"init",450)
p2 = Proceso.new(2,1,"telegram",2200)
p3 = Proceso.new(3,1,"safari",1230)
p4 = Proceso.new(4,2,"chrome",2100)
p5 = Proceso.new(5,4,"telegram",2000)
p6 = Proceso.new(6,2,"eclipse",100000)
p7 = Proceso.new(7,1,"eclipse",10)
p8 = Proceso.new(8,1,"sublime",4500)
p9 = Proceso.new(9,1,"vscode",3200)
p10 = Proceso.new(10,1,"trello",6230)
p11 = Proceso.new(11,2,"slack",8100)
p12 = Proceso.new(12,4,"gimp",20000)
p13 = Proceso.new(13,2,"vscode",2000)
p14 = Proceso.new(14,13,"chrome",10000)
p15 = Proceso.new(15,13,"firefox",10000)
p16 = Proceso.new(16,1,"firefox",50)

pm.addProcess(p1)
pm.addProcess(p2)
pm.addProcess(p3)
pm.addProcess(p4)
pm.addProcess(p5)
pm.addProcess(p6)
pm.addProcess(p7)
pm.addProcess(p8)
pm.addProcess(p9)
pm.addProcess(p10)
pm.addProcess(p11)
pm.addProcess(p12)
pm.addProcess(p13)
pm.addProcess(p14)
pm.addProcess(p15)
pm.addProcess(p16)

pm.each_process {|p| puts p}
puts "-----------------------"

pm.each_child_process(p2) {|p| puts p}
puts "-----------------------"

puts pm.top_ten
puts "-----------------------"

puts pm.memory
puts "-Examen----------------------"
pm.processesWithNameEach(["chrome", "firefox","vscode"]) { |p| puts "#{p.name} #{p.memory}" } 