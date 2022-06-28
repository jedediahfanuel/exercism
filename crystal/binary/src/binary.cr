class Binary
  def self.to_decimal(b : String)
    b.chars.reverse_each.map_with_index { |c, i| 
      c == '1' ? 2 ** i : raise ArgumentError.new unless c == '0'
    }.compact.sum
  end
end
