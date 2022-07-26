class Bin
  def self.binary_array_to_number(arr : Array(Int32)) : Int32
    arr.reverse_each.map_with_index { |c, i| 
      c == 1 ? 2 ** i : 0
    }.sum
  end
end
