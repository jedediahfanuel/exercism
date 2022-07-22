require "spec"
require "../src/*"

NAME   = "Ebenezer"
AGE    = 89
WEIGHT = 131.6

describe "HealthStatistics" do
  it "Test name" do
    user = HealthStatistics.new(NAME, AGE, WEIGHT)
    user.name.should eq(NAME)
  end
  
  it "Test age" do
    user = HealthStatistics.new(NAME, AGE, WEIGHT)
    user.age.should eq(AGE)
  end
  
  it "Test weight" do
    user = HealthStatistics.new(NAME, AGE, WEIGHT)
    user.weight.should eq(WEIGHT)
  end
  
  it "Test set age" do
    new_age = 90
    user = HealthStatistics.new(NAME, AGE, WEIGHT)
    user.age = new_age
    user.age.should eq(new_age)
  end
  
  it "Test set weight" do
    new_weight = 129.4
    user = HealthStatistics.new(NAME, AGE, WEIGHT)
    user.weight = new_weight
    user.weight.should eq(new_weight)
  end
end
