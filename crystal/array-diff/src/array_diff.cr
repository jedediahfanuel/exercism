class ArrayDiff
  def self.diff(a : Array(Int32), b : Array(Int32)) : Array(Int32)
    return a if a.empty? || b.empty?
    a.reject { |x| b.any?(&.== x) }
  end
end
