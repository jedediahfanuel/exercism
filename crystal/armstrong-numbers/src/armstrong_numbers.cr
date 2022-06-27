class ArmstrongNumbers
  def self.armstrong_number?(n : Int32)
    arr = n.digits
    size = arr.size
    
    res = arr.map { |d| d ** size }.sum

    n == res ? true : false
  end
end
