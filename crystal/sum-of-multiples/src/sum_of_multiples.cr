class SumOfMultiples
  def self.sum(mul : Array(Int32), num : Int32) :  Int32
    # Sum numbers when n is divisible by any of 'mul' and mul != 0
    (1...num).sum { |n| mul.select(&.!= 0).any? { |m| n.divisible_by? m } ? n : 0 }
  end
end

