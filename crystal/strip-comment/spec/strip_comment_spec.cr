require "spec"
require "../src/*"

describe "StripComment" do
  it %{solution("apples, pears # and bananas\\ngrapes\\nbananas !apples", ["#", "!"])} do
    StripComment.solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"]).should eq "apples, pears\ngrapes\nbananas"
  end
  
  it %{solution("a #b\\nc\\nd $e f g", ["#", "$"])} do
    StripComment.solution("a #b\nc\nd $e f g", ["#", "$"]).should eq "a\nc\nd"
  end
end
