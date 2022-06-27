class ArmstrongNumbers
  def self.armstrong_number?(n : Int32) : Bool?
    arr = n.digits
    len = arr.size
    
    res = arr.map { |d| d ** len }.sum

    n == res ? true : false
  end
end
