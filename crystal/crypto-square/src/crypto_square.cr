module CryptoSquare
  def self.ciphertext(plaintext : String) : String
    plaintext = plaintext.downcase.chars.select(&.ascii_alphanumeric?).join
    return "" if plaintext.empty?

    s = plaintext.size
    n = Math.sqrt(s).to_i
    r, c = n, n

    if (n * n) != s
      r, c = n, (n + 1)
      r += 1 if s >= r * c
      plaintext += " " * (r * c - s)
    end

    plaintext.chars.each_slice(c).to_a.transpose.map(&.join).join(" ")
  end
end
