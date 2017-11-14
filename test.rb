require "ProcessManager"
require "Proceso"

p = ProcessManager.new;

p1 = Proceso.new(1, 0, "Init", 548);
p2 = Proceso.new(2, 1, "Chrome", 2455);
p3 = Proceso.new(3, 1, "Discord", 2545)
p4 = Proceso.new(4, 2, "Chrome", 1548);

p.addProcess(p1);
p.addProcess(p2);
p.addProcess(p3);
p.addProcess(p4);

#p.each_process() {|p| puts p};
p.memory();
puts p.processes_by_name();
