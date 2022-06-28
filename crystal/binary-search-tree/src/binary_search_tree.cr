class Node
  include Enumerable(T)
  include Iterable(T)

  property value : T
  property left : Node(T)
  property right : Node(T)

  def initialize(@value : T)
    
  end
end