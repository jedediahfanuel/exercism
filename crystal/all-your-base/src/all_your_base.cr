class AllYourBase
  def self.rebase(i : Int32, seq : Array(Int32), o : Int32) : Array(Int32)
    raise ArgumentError.new if i < 2 || o < 2
    return [0] unless seq.any?
    
    to_output_base( to_base_ten( seq , i ) , o )
  end
  
  private def self.to_base_ten(seq : Array(Int32), b : Int32) : Int32
    seq.reverse.map_with_index do |d, i|  
      if d < 0 || d >= b
        raise ArgumentError.new "Invalid input digit."
      end
      
      d * (b ** i)
    end.sum
  end
  
  private def self.to_output_base(ten_base_num : Int32, b : Int32) : Array(Int32)
    res = [] of Int32

    while ten_base_num >= b
      res.unshift ten_base_num % b
      ten_base_num //= b
    end

    res.unshift ten_base_num % b
  end
  
  def self.rebase_two(base, digits, new_base)
    raise ArgumentError.new if base < 2 || new_base < 2
    num = digits.reduce(0) do |acc, d|
      raise ArgumentError.new if d < 0 || d >= base
      acc*base + d
    end
    result = [] of Int32
    while num > 0
      result.unshift num % new_base
      num //= new_base
    end
 
    result.empty? ? [0] : result
  end  
end

