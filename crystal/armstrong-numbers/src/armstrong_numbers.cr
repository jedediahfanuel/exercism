class ArmstrongNumbers
  def self.armstrong_number?(expected : Int32) : Bool?
    arr = expected.digits
    len = arr.size
    
    result = arr.map { |d| d ** len }.sum

    expected == result ? true : false
  end
end
