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
end

