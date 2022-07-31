def sum_of_divided(lst : Array(Int64))
  primes = lst.map { |i| factors i }.flatten.uniq.sort
  primes.map { |i| [ i, lst.sum { |n| n.divisible_by?(i) ? n : 0 } ] }
end

def self.factors(n : Int64) : Array(Int64)
  res = [] of Int64
  while n.divisible_by? 2
    res << 2
    n //= 2
  end
  
  (3..Math.sqrt(n)+1).step(by: 2).each do |i|
    while n.divisible_by? i
      res << i.to_i64
      n //= i
    end
  end
  
  res << n if n > 2
  res
end
