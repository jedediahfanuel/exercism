class Troll
  def self.disemvowel(s : String) : String
    s.gsub(/[aeiuoAEIUO]/, "")
    # gsub(/[aeiou]/i, "")
  end
  
  def self.disemvowel_(str)
    str.delete("aeiouAEIOU")
  end
end
