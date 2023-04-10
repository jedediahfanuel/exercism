class RobotSimulator
  property x : Int32 ; property y : Int32 ; property direction : Symbol
  getter f = [:north, :east, :south, :west]
  def initialize(c : Tuple(Int32, Int32), @direction : Symbol)
    @x = c.first ; @y = c.last
  end

  def move(s : String)  
    s.chars.each { |t| t == 'A' ? advance : turn t }
  end

  def advance
    case direction
    when :north then @y += 1
    when :south then @y -= 1
    when :east  then @x += 1
    when :west  then @x -= 1
    else raise ArgumentError.new ; end
  end

  def turn(t : Char)
    case t
    when 'R' then @direction = f[f.index(direction) == f.index(f.last) ? 0 : f.index!(direction) + 1]
    when 'L' then @direction = f[f.index!(direction) - 1]
    else raise ArgumentError.new ; end
  end
end
