class RunLengthEncoding
  def self.encode(s : String) : String
    s.scan(/((.)\2*)/).map { |m| (m[0].size < 2 ? "" : m[0].size.to_s) + m[0][0] }.join
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
end
