class ArrayDiff
  def self.diff(a : Array(Int32), b : Array(Int32)) : Array(Int32)
    a.reject { |x| b.any?(&.== x) }
  end
  
  def self.diff_two(a : Array(Int32), b : Array(Int32)) : Array(Int32)
    a - b
  end
end
