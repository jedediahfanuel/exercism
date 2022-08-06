class Shape
  def self.is_square(x) : Bool
    y = Math.sqrt(x)
    y * y == x ? true : false
  end
end
