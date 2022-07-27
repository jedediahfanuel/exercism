class Sums
  def self.parts_sums(ls)
    all = ls.sum
    ary, acc = [all], 0
    
    ls.each { |i| acc += i ; ary << all - acc }
    ary
  end
  
  def self.parts_sums_two(arr : Array(Int32|Int64))
    result = [arr.sum]
    arr.each { |item| result << result.last-item }
    result
  end
end
