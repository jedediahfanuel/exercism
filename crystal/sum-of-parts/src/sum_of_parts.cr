class Sums
  def self.parts_sums(ls)
    all = ls.sum
    ary, acc = [all], 0
    
    ls.each { |i| acc += i ; ary << all - acc }
    ary
  end
end
