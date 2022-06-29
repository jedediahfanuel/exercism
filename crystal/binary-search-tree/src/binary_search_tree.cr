class Node(T)
  include Enumerable(T)
  include Iterable(T)
  
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
      if node = right
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

  def delete(v)
    return delete_node if v == value

    if v < value
      if (node = left)
        @left = node.delete(v)
      end
    else
      if (node = right)
        @right = node.delete(v)
      end
    end

    self
  end

  private def delete_node
    if one_child?
      if left
        @value = left.not_nil!.value
        @left = nil
      else
        @value = right.not_nil!.value
        @right = nil
      end
      self
    elsif two_children?
      node = right.not_nil!
      @value = node.each.first
      @right = node.delete(value)
      self
    end
  end

  private def one_child?
    (left && !right) || (right && !left)
  end

  private def two_children?
    left && right
  end

  def each(&block) # Enumerable's
    TreeIterator.new(self).each do |v|
      yield v
    end
  end

  def each() # Itereable's
    TreeIterator.new(self)
  end

  private class TreeIterator(T) 
  include Iterator(T)

    # NOTE : That iterator is lazy
    # So its only process the most left children

    def initialize(@node : Node(T))
      @stack = Array(Node(T)).new
      process_left(node)
    end

    # And lazily process right children & the rest
    # when next method is triggered
    def next
      return stop if @stack.empty?

      node = @stack.pop
      right = node.right
      if right
        process_left(right)
      end
      node.value
    end

    private def process_left(node)
      while node
        @stack.push(node)
        node = node.left
      end
    end
  end

end
