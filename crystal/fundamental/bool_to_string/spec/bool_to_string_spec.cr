require "spec"
require "../src/*"

describe "Bool-to-String" do
  it "Testing for true statement" do
    BoolToString.bool_to_word(true).should eq "Yes"
  end
  
  it "Testing for false statement" do
    BoolToString.bool_to_word(false).should eq "No"
  end
end

