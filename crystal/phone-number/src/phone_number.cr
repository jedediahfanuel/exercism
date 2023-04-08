module PhoneNumber
  def self.clean(phrase : String) : String
    num = phrase.chars.select(&.ascii_number?).map(&.to_i)
    return num[1..].join if num.size == 11 && num[0] == 1 && num[1] > 1 && num[4] > 1
    return num.join      if num.size == 10 &&                num[0] > 1 && num[3] > 1
    raise ArgumentError.new
  end
end
