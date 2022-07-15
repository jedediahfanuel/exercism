class PrimeFactors
  def self.factors(n : Int64) : Array(Int64)
    res = [] of Int64
    while n.divisible_by? 2
      res << 2
      n //= 2
    end
    
    (3..Math.sqrt(n)+1).step(by: 2).each do |i|
      while n.divisible_by? i
        res << i
        n //= i
      end
    end
    
    res << n if n > 2
    res
  end
end

# https://www.geeksforgeeks.org/print-all-prime-factors-of-a-given-number/
