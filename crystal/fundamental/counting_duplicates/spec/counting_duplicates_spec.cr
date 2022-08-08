require "spec"
require "../src/*"

private def test(arg,ex) 
  it "duplicate_count(#{arg.inspect}) should return #{ex}" do 
    duplicate_count(arg).should eq ex 
  end 
end

describe "CountingDuplicates" do  
  test("", 0)
  test("abcde", 0)
  test("abcdeaa", 1)
  test("abcdeaB", 2)
  test("Indivisibilities", 2)
end
