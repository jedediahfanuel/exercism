class BinarySearch
  def initialize(@arr : Array(Int32)) end
  
  def find(v : Int32)
    raise ArgumentError.new if @arr.empty? || v < @arr.first || v > @arr.last

    x, y = 0, @arr.size-1

    while x <= y
      m = x + (y - x) // 2
      return m if @arr[m] == v
      y = m - 1 if v < @arr[m]
      x = m + 1 if v > @arr[m]
    end

    raise ArgumentError.new
  end
end
