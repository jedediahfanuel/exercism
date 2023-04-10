class RobotSimulator
  property x : Int32 ; property y : Int32 ; getter direction : Symbol
  getter f = [:north, :east, :south, :west]
  def initialize(c : Tuple(Int32, Int32), @direction : Symbol)
    @x = c.first ; @y = c.last
  end

  def move(s : String)  
    s.chars.each { |t| t == 'A' ? advance : turn t }
  end

  def advance
    @y += 1 if direction == :north
    @y -= 1 if direction == :south
    @x += 1 if direction == :east
    @x -= 1 if direction == :west
  end

  def turn(t : Char)
    if d = f.index direction
      @direction = f[d == f.index(f.last) ? 0 : d + 1] if t == 'R'
      @direction = f[d - 1] if t == 'L'
    end
  end
end
