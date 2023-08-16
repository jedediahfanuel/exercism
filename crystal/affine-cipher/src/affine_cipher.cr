module AffineCipher
  @@alpha = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

  def self.encode(a : Int32, b : Int32, str : String)
    coprime?(a, 26)
    str.downcase.each_char.compact_map { |c|
      i = @@alpha.index(c)
      i ? @@alpha[(a * i + b) % 26] : c.ascii_number? ? c : nil
    }.each_slice(5).map(&.join).join(" ")
  end

  def self.decode(a : Int32, b : Int32, str : String)
    coprime?(a, 26)
    mmi = mod_inverse(a, 26)
    str.gsub(" ", "").each_char.map { |c|
      y = @@alpha.index(c)
      y ? @@alpha[mmi * (y - b) % 26] : c.ascii_number? ? c : nil
    }.to_a.join
  end

  def self.coprime?(x : Int32, y : Int32) raise ArgumentError.new if x.gcd(y) != 1 end

  def self.extended_gcd(a, b)
    return b, 0, 1 if a == 0
    gcd, x, y = extended_gcd(b % a, a)
    return gcd, y - (b // a) * x, x
  end

  def self.mod_inverse(a, m)
    _, x, _ = extended_gcd(a, m)
    return (x % m + m) % m
  end
end
