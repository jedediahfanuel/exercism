require "spec"
require "../src/*"

describe "Nico" do
  describe "#de_nico" do
    it "1st test" do
      Nico.de_nico("crazy", "cseerntiofarmit on  ").should eq("secretinformation")
    end
    
    it "2nd test" do
      Nico.de_nico("crazy", "cseerntiofarmit on").should eq("secretinformation")
    end
  
    it "3rd test" do
      Nico.de_nico("abc", "abcd").should eq("abcd")
    end
  
    it "4th test" do
      Nico.de_nico("ba", "2143658709").should eq("1234567890")
    end
    
    it "5th test" do
      Nico.de_nico("a", "message").should eq("message")
    end
    
    it "6th test" do
      Nico.de_nico("key", "eky").should eq("key")
    end
    
    it "6th test" do
      Nico.de_nico("key", "eky").should eq("key")
    end
    
    it "7th test" do
      Nico.de_nico("ycrks", "uq w  fiq lnozsafrxinftxuhwdizwcqcwfvds").should eq(" u qw  ifqslonziarfxuntfxzhdwiwwqccfdvs")
    end
  end
end
