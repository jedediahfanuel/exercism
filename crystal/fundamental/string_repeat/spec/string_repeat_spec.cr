require "spec"
require "../src/*"

def testH(n,str,ex) it "Testing for #{n} and #{str}" do repeat_str(n,str).should eq ex end end

describe "Basic test cases" do
  testH(3, "*","***")
  testH(5, "#","#####")
  testH(2, "ha ","ha ha ")
  testH(4, "pippi","pippipippipippipippi")
  testH(0, "pippi","")
end
