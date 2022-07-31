require "spec"
require "../src/*"

def tester(n, exp)
  it "Testing for #{n} " do 
    pyramid(n).should eq(exp)
  end
end

describe "Basic tests" do
  tester(0, [] of Array(Array(Int32)))
  tester(1, [[1]])
  tester(2, [[1], [1, 1]])
  tester(3, [[1], [1, 1], [1, 1, 1]])
end
