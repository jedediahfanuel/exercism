class Shape
  def self.is_square(x) : Bool
    return false if x.negative?
    y = Math.sqrt(x).to_i
    y * y == x ? true : false
  end
  
  def self.is_square_two(x)
    Math.sqrt(x) == Math.sqrt(x).round
  end
  
  def self.is_square_three(n)
    n >= 0 && Math.sqrt(n) % 1 == 0
  end  
end
