class WeighingMachine
  property weight  : Float32 = 0
  getter precision : Int32
  setter metric    : Bool

  def initialize(@precision : Int32, @metric : Bool) end

  # DO NOT MODIFY ANYTHING BELOW THIS LINE
  def weigh : String
    weight = @metric ? @weight : @weight * 2.20462
    weight = weight.round(@precision)
    weight.to_s
  end
end
