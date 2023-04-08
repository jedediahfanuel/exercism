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

  def self.decode_2(s : String) : String
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

  def self.decode(s : String) : String
    n, result = "", ""

    i = 0
    until i == s.size
      if s[i].ascii_number?
        until s[i+1].ascii_letter?
          n += s[i]
          i += 1
        end
        result += s[i].to_s * n.to_i
      elsif
        result += s[i]

      i += 1
    end

    result
  end

  private def self.append_string(count : Int32, char : Char) : String
    return "" if count == 0
    count == 1 ? "#{char}" : "#{count}#{char}"
  end
end
