require "spec"
require "../src/*"

describe "ShortFibonacci" do
  it "Test empty" do
    Fibonacci.create_empty.should eq(Array(Int32).new)
  end
  
  it "Test buffer" do
    10.times do |i|
      zeroized = Fibonacci.create_buffer(i)
      zeroized.size.should eq(i)
      zeroized.all? { |x| x == 0 }
    end
  end
  
  it "Test fibonacci" do
    fibb = Fibonacci.fibonacci();
    fibb.size.should eq(5)
    fibb[0].should eq(1)
    fibb[1].should eq(1)
    fibb.each.cons(3).each do |x|
      (x[0] + x[1]).should eq(x[2])
    end
  end
end
