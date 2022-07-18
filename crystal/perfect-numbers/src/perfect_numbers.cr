class PerfectNumbers
  def self.classify(n : Int32) : String
    raise ArgumentError.new if n < 1
    alsum = (1..(n // 2)).sum { |i| n.divisible_by?(i) ? i : 0 }
    alsum == n ? "perfect" : alsum < n ? "deficient" : "abundant"
  end
end

