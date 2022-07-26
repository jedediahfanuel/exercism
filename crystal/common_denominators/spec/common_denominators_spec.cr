require "spec"
require "../src/*"

def testing(actual, expected)
    actual.should eq expected
end

describe "convert_fracts" do
  it "Basic tests" do    
    lst = [ [1, 2], [1, 3], [1, 4] ]
    testing(CommonDenominators.convert_fracts(lst), [[6,12],[4,12],[3,12]])
  end
end

