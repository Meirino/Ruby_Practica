class Proceso
  def initialize(id, parentID, nombre, memoria)
    @id = id
    @parentID = parentID
    @nombre = nombre
    @memoria = memoria
  end
  
  def <=>(p)
    self.memoria - p.memoria
  end
  
  def to_s
    return "{#{@id} / #{@parentID} / #{@nombre} / #{@memoria}}"
  end
  
  attr_reader :id, :parentID, :nombre, :memoria
end