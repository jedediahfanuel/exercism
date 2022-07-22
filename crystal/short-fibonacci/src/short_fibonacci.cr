class Fibonacci
  def self.create_empty : Array(Int32)
    Array(Int32).new
  end
  
  def self.create_buffer(count : Int32) : Array(Int32)
    Array(Int32).new(count, 0)
  end
  
  def self.fibonacci : Array(Int32)
    [1, 1, 2, 3 ,5]
  end
end
