class Node(T)
  property value : T
  property left : Node(T)?
  property right : Node(T)?

  def initialize(@value : T) end

  def insert(v)
    if v <= value
      if node = left
        node.insert(v)
      else 
        @left = Node.new(v)
      end
    else
      if node = left
        node.insert(v)
      else 
        @right = Node.new(v)
      end
    end
  end

  def search(v)
    return self if value == v
    return v <= value ? 
    if node = left ; return node.search(v) end 
    : if node = right ; return node.search(v) end

    nil
  end

end
