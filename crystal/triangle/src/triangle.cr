class Triangle
  alias Flint = Int32 | Float64
  def initialize(@sides : Tuple(Flint, Flint, Flint))
    raise ArgumentError.new if isInvalid(@sides[0], @sides[1], @sides[2])
    self
  end
  
  def isInvalid(a, b, c) : Bool
    return true if a == b && b == c && c == 0
    case {((a + b) > c), ((b + c) > a), ((c + a) > b)}
    when {true, true, true} then return false
    else                         return true
    end
  end
  
  def equilateral? : Bool
    @sides[0] == @sides[1] && @sides[1] == @sides[2]
  end
end
