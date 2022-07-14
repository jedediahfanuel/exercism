class Darts
  def self.score(x : Float32, y : Float32) : Int8
    case Math.hypot(x, y)
    when .<= 1  then 10_i8
    when .<= 5  then 5_i8
    when .<= 10 then 1_i8
    else             0_i8
    end
  end
end

