require "spec"
require "../src/*"

describe "Sample Tests" do
  it "Should pass sample tests" do
    zeros(0).should eq 0
    zeros(6).should eq 1
    zeros(30).should eq 7
  end  
end
