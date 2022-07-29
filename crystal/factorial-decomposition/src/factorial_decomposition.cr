def decomp(n : Int32) : String
  primes = (2..n).map do |i|
    factors i
  end.flatten.tally
  
  primes.reduce("") do |acc, (key, value)|
    value > 1 ? "#{acc} * #{key}^#{value}" : "#{acc} * #{key}"
  end.lstrip(" * ")
end

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
