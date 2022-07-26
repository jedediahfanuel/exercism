require "spec"
require "../src/*"

describe "SplitStrings" do
  it "test even length" do
    SplitStrings.split("abcdef").should eq(["ab", "cd", "ef"])
  end
  
  it "test odd length" do
    SplitStrings.split("abcdefg").should eq(["ab", "cd", "ef", "g_"])
  end
  
  it "test empty string" do
    SplitStrings.split("").should eq([] of String)
  end
end
