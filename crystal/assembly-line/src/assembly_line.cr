class AssemblyLine
  # 1 to  4  : 100% success rate.
  # 5 to  8  : 90% success rate.
  # 9 and 10 : 77% success rate.
  # 221 cars per hour
  
  def self.production_rate_per_hour(speed : UInt8) :  Float64
    cars = (speed.to_u16 * 221).to_f64
    
    case speed
    when 0     then 0_f64
    when 1..4  then cars
    when 5..8  then cars * 0.9
    when 9..10 then cars * 0.77
    else raise ArgumentError.new "Unknown Speed Value"
    end
  end
  
  def self.working_items_per_minute(speed : UInt8) : UInt32
    production_rate_per_hour(speed).to_u32 // 60
  end
end
