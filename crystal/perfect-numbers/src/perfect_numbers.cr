class PerfectNumbers
  def self.classify(n : Int32) : String
    raise ArgumentError.new if n < 1
    alsum = (1..(n // 2)).map { |i| n.divisible_by?(i) ? i : nil }.compact.sum
    alsum == n ? "perfect" : alsum < n ? "deficient" : "abundant"
  end
end

