require "spec"
require "../src/*"

def process_rate_per_hour(speed : UInt8, expected_rate : Float64)
  actual_rate = AssemblyLine.production_rate_per_hour(speed)
  actual_rate = (actual_rate * 100.0).round() / 100.0
  (actual_rate - expected_rate).abs.should be < Float64::MAX
end

def process_rate_per_minute(speed : UInt8, expected_rate : UInt32)
  AssemblyLine.working_items_per_minute(speed).should eq(expected_rate)
end

describe "AssemblyLine" do
  it "production_rate_per_hour_at_speed_zero" do
      process_rate_per_hour(0, 0.0)
  end
  
  it "production_rate_per_hour_at_speed_one" do
      process_rate_per_hour(1, 221.0)
  end
  
  it "production_rate_per_hour_at_speed_four" do
      process_rate_per_hour(4, 884.0)
  end
  
  it "production_rate_per_hour_at_speed_seven" do
      process_rate_per_hour(7, 1392.3)
  end
  
  it "production_rate_per_hour_at_speed_nine" do
      process_rate_per_hour(9, 1531.53)
  end
  
  it "production_rate_per_minute_at_speed_zero" do
      process_rate_per_minute(0, 0)
  end
  
  it "production_rate_per_minute_at_speed_one" do
      process_rate_per_minute(1, 3)
  end
  
  it "production_rate_per_minute_at_speed_five" do
      process_rate_per_minute(5, 16)
  end
  
  it "production_rate_per_minute_at_speed_eight" do
      process_rate_per_minute(8, 26)
  end
  
  it "production_rate_per_minute_at_speed_ten" do
      process_rate_per_minute(10, 28)
  end
end
