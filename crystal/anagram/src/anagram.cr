class Anagram
  def self.find(str : String, arr : Array(String)) : Array(String)
    res = [] of String
    arr.each do |s|
      if str.size == s.size
        x = str.chars.sort.join
        y = s.chars.sort.join

        if x == y
          res << s
        end
      end
    end
    res
  end
end