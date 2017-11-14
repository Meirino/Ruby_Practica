require "Proceso"

class ProcessManager
  
  def initialize()
    @listaProcesos = []
  end
  
  def addProcess(p)
    # Añadir a la lista de procesos
    
    @listaProcesos << p;
  end
  
  def each_process()
    # Devolver todos los procesos
    
    @listaProcesos.each do |p|
      yield(p)
    end
  end
  
  def each_child_process(p)
    # Devolver el hijo de p y los hijos de sus hijos recursivamente
    # yield(p)
  end
  
  def memory()
    # Devolver los 10 procesos que ocupan más memoria
    
    _aux_list = @listaProcesos.sort_by() {|x| x.memoria};
    _aux_list.reverse!();
    puts _aux_list.take(10);
  end
  
  def processes_by_name()
    _aux = @listaProcesos.group_by(&:nombre);
    return _aux.map() {|p| p}
  end
  
end