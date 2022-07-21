require "spec"
require "../src/*"

def testing(actual, expected)
    actual.should eq expected
end

describe "stock_list" do
  it "Basic tests"  do
    b = ["BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"]
    c = ["A", "B", "C", "D"]
    res = "(A : 0) - (B : 1290) - (C : 515) - (D : 600)"
    testing(Bookseller.stock_list(b, c), res)
  end
  
  it "Empty target" do
    b = ["BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"]
    c = [] of String
    res = ""
    testing(Bookseller.stock_list(b, c), res)
  end
end
