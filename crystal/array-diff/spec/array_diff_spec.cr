require "spec"
require "../src/*"

private def test(arg1, arg2, ex)
  it "array_diff(#{arg1.inspect}, #{arg2.inspect}) should return #{ex.inspect}" do
    ArrayDiff.diff(arg1,arg2).should eq ex
  end
end

describe "ArrayDiff" do
  test([1,2], [1], [2])
  test([1,2,2], [1], [2,2])
  test([1,2,2], [2], [1])
  test([1,2,2], [] of Int32, [1,2,2])
  test([] of Int32, [1,2], [] of Int32)
  test([1,2,3], [1, 2], [3])
end
