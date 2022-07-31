require "spec"
require "../src/*"

def testing(actual, expected)
    actual.should eq expected
end

describe "sum_of_divided(" do
  it "Basic tests" do    
    testing(sum_of_divided([12_i64, 15_i64]), [ [2, 12], [3, 27], [5, 15] ]);
  end
end
