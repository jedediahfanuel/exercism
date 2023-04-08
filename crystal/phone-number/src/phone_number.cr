module PhoneNumber
  def self.clean(phrase : String) : String
    num  = phrase.chars.select(&.ascii_number?).join
    num  = num.delete_at 0 if num.starts_with? '1'
    return num             if num.size  == 10 && num[0].to_i > 1 && num[3].to_i > 1
    raise  ArgumentError.new
  end
end
