require "spec"
require "../src/*"

private def testing(args, expected)
  Tortoise.race(*args).should eq expected
end

describe "TortoiseRacing" do
  it "1st tests" do
    testing({720, 850, 70}, [0, 32, 18])
  end
  
  it "2nd tests" do
    testing({80, 91, 37}, [3, 21, 49])
  end
  
  it "3rd tests" do
    testing({80, 100, 40}, [2, 0, 0])
  end
end

