class Anagram
  def self.find(str : String, arr : Array(String)) : Array(String)
    res = [] of String
    str = str.upcase
    x = str.chars.sort.join

    arr.each do |s|
      if str.size != s.size
        next
      end
      
      if str == s.upcase
        next
      end

      y = s.upcase.chars.sort.join

      if x == y
        res << s
      end
    end

    res
  end
end