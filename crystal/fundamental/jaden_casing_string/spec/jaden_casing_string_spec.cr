require "spec"
require "../src/*"

# Spec example:
# TODO: replace with your own tests (TDD), these are just how-to examples.

str = "How can mirrors be real if our eyes aren't real"

describe "toJadenCase" do
  it "basic test" do
     str.toJadenCase().should eq "How Can Mirrors Be Real If Our Eyes Aren't Real"
  end
end
