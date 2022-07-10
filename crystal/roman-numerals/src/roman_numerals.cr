struct Int
  @@roman = {
    4 => ["M"], 3 => ["M", "D", "C"], 2 => ["C", "L", "X"], 1 => ["X", "V", "I"]
  }
  
  def to_roman : String
    arr, result = self.digits, ""

    arr.size.downto(1) do |t|
      num = arr[t-1]
      
      if t == 4
        result +=         @@roman[t][0] * num
      else
        result += case num
        when 1, 2, 3 then @@roman[t][2] * num
        when 4       then @@roman[t][2] + @@roman[t][1]
        when 5       then @@roman[t][1]
        when 6, 7, 8 then @@roman[t][1] + @@roman[t][2] * (num - 5)
        when 9       then @@roman[t][2] + @@roman[t][0]
        else              "" end
      end
    end
    
    result
  end
  
  private ROMAN_DIGITS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  
  def to_roman_two
    remainder = self
    ROMAN_DIGITS.map do |sigil, value|
      quotient, remainder = remainder.divmod(value)
      sigil * quotient
    end.join
  end
end

