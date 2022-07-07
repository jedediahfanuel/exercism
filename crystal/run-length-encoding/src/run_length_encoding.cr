class RunLengthEncoding
  def self.encode(s : String) : String
    last_count, last_char, result = 0, '.', ""

    s.each_char do |c|
      if last_char == c
        last_count += 1
      else
        result += append_string(last_count, last_char)
        last_char = c
        last_count = 1
      end
    end

    return result += append_string(last_count, last_char)
  end

  def self.decode(s : String) : String
    counting, n, result = false, "", ""

    s.each_char do |c|
      if c.ascii_number?
        n += c
        counting = true
      elsif !counting
        result += c
      elsif counting
        result += c.to_s * n.to_i
        n = ""
        counting = false
      end

    end

    result
  end

  private def self.append_string(count : Int32, char : Char) : String
    return "" if count == 0
    count == 1 ? "#{char}" : "#{count}#{char}"
  end

  ##################################################################33

  def encode_2(plaintext)
    plaintext.gsub(/(.)\1+/) { |m| m.size.to_s + m.squeeze }
  end
  def decode_2(ciphertext)
    ciphertext.gsub(/(\d+)(.)/) { $2 * $1.to_i }
  end
end
