class Queen
  property x, y
  def initialize(@x : Int32, @y : Int32) raise ArgumentError.new if x < 0 || x > 7 || y < 0 || y > 7 end
  def can_attack?(q : Queen) x == q.x || y == q.y || (x - q.x).abs == (y - q.y).abs ? true : false end
end
