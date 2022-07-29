# require "big"

# def zeros(n)
#   str = BigInt.new(n).factorial.to_s
#   str.size - str.rstrip('0').size
# end

def zeros(n)
  total = 0
  i = 1
  while (n > 0) && (n//(5**i) >= 1)
    total += (n//(5**i)).to_i
    i += 1
  end
  return total
end
