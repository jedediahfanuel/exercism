class Triangle
  alias Flint = Int32 | Float64
  def initialize(@sides : Tuple(Flint, Flint, Flint))
    raise ArgumentError.new if isInvalid(@sides[0], @sides[1], @sides[2]) end
  
  def isInvalid(a, b, c) : Bool
    case {((a + b) > c), ((b + c) > a), ((c + a) > b)}
    when {true, true, true} then false
    else                         true
    end
  end
  
  def equilateral? ; @sides[0] == @sides[1] && @sides[1] == @sides[2]                            end 
  def isosceles?   ; @sides.tally.size < 3                                                       end
  def scalene?     ; @sides[0] != @sides[1] && @sides[1] != @sides[2] && @sides[0] != @sides[2]  end
end
