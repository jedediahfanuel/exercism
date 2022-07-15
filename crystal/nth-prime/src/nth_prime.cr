class NthPrime
  def self.prime(n : Int32) : Int32
    raise ArgumentError.new if n < 1
    primes = [2]
    loop do
      break primes.last unless primes.size < n
      primes << next_prime(primes)
    end
  end
  
  def self.next_prime(primes : Array(Int32)) : Int32
    n = primes.last + 1
    loop do
      break n if primes.none? { |x| (n).divisible_by? x }
      n += 1
    end
  end
end

