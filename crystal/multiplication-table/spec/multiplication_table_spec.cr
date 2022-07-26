require "spec"
require "../src/*"

describe "MultiplicationTable" do
  it "should pass size of three" do
    Multiplication.table(3).should eq [[1,2,3],[2,4,6],[3,6,9]]
  end
end

