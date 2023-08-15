class Queen
  property x : Int32, y : Int32
  def initialize(@x, @y) raise ArgumentError.new if x < 0 || x > 7 || y < 0 || y > 7 end
  def can_attack?(q : Queen) x == q.x || y == q.y || (x - q.x).abs == (y - q.y).abs end
end
