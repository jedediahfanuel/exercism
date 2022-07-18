require "spec"
require "../src/*"

describe "LuciansLusciousLasagna" do
  it "exepected minutes in oven is correct" do
    LuciansLusciousLasagna.expected_minutes_in_oven().should eq(40)
  end
  
  it "remianing minutes in oven after fifteen minutes" do
    LuciansLusciousLasagna.remaining_minutes_in_oven(25).should eq(15)
  end
  
  it "preparation time in minutes for one layer" do
    LuciansLusciousLasagna.preparation_time_in_minutes(1).should eq(2)
  end
  
  it "preparation time in minutes for multiple layer" do
    LuciansLusciousLasagna.preparation_time_in_minutes(4).should eq(8)
  end
  
  it "elapsed time in minutes for one layer" do
    LuciansLusciousLasagna.elapsed_time_in_minutes(1, 30).should eq(32)
  end
  
  it "elapsed time in minutes for multiple layer" do
    LuciansLusciousLasagna.preparation_time_in_minutes(4, 8).should eq(16)
  end
end
