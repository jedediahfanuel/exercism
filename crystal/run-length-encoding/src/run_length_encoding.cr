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

  private def self.append_string(count : Int32, char : Char) : String
    return "" if count == 0
    count == 1 ? "#{char}" : "#{count}#{char}"
  end
end
