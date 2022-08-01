require "spec"
require "../src/*"

def testing(actual, expected)
    actual.should eq expected
end

describe "mix" do
  it "Basic tests" do    
      testing(mix("Are they here", "yes, they are here"), "2:eeeee/2:yy/=:hh/=:rr")
      testing(mix("looping is fun but dangerous", "less dangerous than coding"), "1:ooo/1:uuu/2:sss/=:nnn/1:ii/2:aa/2:dd/2:ee/=:gg")
      testing(mix(" In many languages", " there's a pair of functions"), "1:aaa/1:nnn/1:gg/2:ee/2:ff/2:ii/2:oo/2:rr/2:ss/2:tt")
      testing(mix("Lords of the Fallen", "gamekult"), "1:ee/1:ll/1:oo")
  end
end

