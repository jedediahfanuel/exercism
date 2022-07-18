class PerfectNumbers
  def self.classify(n : Int32) : String
    raise ArgumentError.new if n < 1
    
    return "abundant"  if aliquot_sum(n) > n
    return "deficient" if aliquot_sum(n) < n
    return "perfect"
  end
  
  def self.aliquot_sum(n : Int32) : Int32
    (1..(n // 2)).map { |i| n.divisible_by?(i) ? i : nil }.compact.sum
  end
end

