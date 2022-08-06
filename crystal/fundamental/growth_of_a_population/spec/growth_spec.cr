require "spec"
require "../src/*"

def testing(actual, expected)
  actual.should eq expected
end

describe "nb_year" do
  it "1st tests" do
    testing(nb_year(1500, 5, 100, 5000), 15)
  end
  
  it "2nd tests" do
    testing(nb_year(1500000, 2.5, 10000, 2000000), 10)
  end
  
  it "3rd tests" do
    testing(nb_year(1500000, 0.25, 1000, 2000000), 94)
  end
  
  it "4th tests" do
    testing(nb_year(1500000, 0.25, -1000, 2000000), 151)
    testing(nb_year(1500000, 0.25, 1, 2000000), 116)
  end
  
  it "5th tests" do
    testing(nb_year(1500000, 0.25, 1, 2000000), 116)
  end
end


