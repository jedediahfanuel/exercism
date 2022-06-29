class Node(T)
  include Enumerable(T)
  include Iterable(T)

  property value : T
  property left : Node(T)?
  property right : Node(T)?

  def initialize(@value : T) end

  def each
    TreeIterator.new(self).each do |v|
      yield v
    end
  end

  def each
    TreeIterator.new(self)
  end

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

end
