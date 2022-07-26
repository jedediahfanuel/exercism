require "spec"
require "../src/*"

def testing(actual, expected)
    actual.should eq expected
end

describe "TwoToOne" do
  it "1st test" do
    testing(TwoToOne.longest("aretheyhere", "yestheyarehere"), "aehrsty")
  end
  
  it "2nd test" do
    testing(TwoToOne.longest("loopingisfunbutdangerous", "lessdangerousthancoding"), "abcdefghilnoprstu")
  end
  
  it "3rd test" do
    testing(TwoToOne.longest("inmanylanguages", "theresapairoffunctions"), "acefghilmnoprstuy")
  end
end

