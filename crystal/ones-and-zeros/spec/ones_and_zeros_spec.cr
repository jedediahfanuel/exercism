require "spec"
require "../src/*"

describe "OnesAndZeros" do
  it "Testing for [0, 0, 0, 1]" do
    Bin.binary_array_to_number([0, 0, 0, 1]).should eq 1
  end
  
  it "Testing for [0, 0, 1, 0]" do
    Bin.binary_array_to_number([0, 0, 1, 0]).should eq 2
  end
  
  it "Testing for [1, 1, 1, 1]" do
    Bin.binary_array_to_number([1, 1, 1, 1]).should eq 15
  end
  
  it "Testing for [0, 1, 1, 0]" do
    Bin.binary_array_to_number([0, 1, 1, 0]).should eq 6
  end
end 
