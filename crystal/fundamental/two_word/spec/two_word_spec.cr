require "spec"
require "../src/*"

def test(arg,ex) 
  it "abbrev_name(#{arg.inspect}) should return #{ex.inspect}" do 
    abbrev_name(arg).should eq ex 
  end 
end

describe "Fixed tests" do  
  test("Sam Harris", "S.H")
  test("Patrick Feenan", "P.F")
  test("Evan Cole", "E.C")
  test("P Favuzzi", "P.F")
  test("David Mendieta", "D.M")
  test("george clooney", "G.C");
  test("marky mark", "M.M");
end
