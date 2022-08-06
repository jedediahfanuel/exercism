require "spec"
require "../src/*"

describe "Basic test" do
  
  it "With -1 should return false" do
    Shape.is_square(-1).should eq false
  end
  
  it "With  0 should return true" do
    Shape.is_square(0).should eq true
  end
  
  it "With  3 should return false" do
    Shape.is_square(3).should eq  false 
  end
  
  it "With  4 should return true --> (2*2)" do
    Shape.is_square(4).should eq  true     
  end
  
  it "With 25 should return true --> (5*5)" do
    Shape.is_square(25).should eq  true 
  end 
  
  it "With 26 should return false" do
    Shape.is_square(26).should eq  false 
  end
  
end

