class Troll
  def self.disemvowel(s : String) : String
      s.gsub(/[aeiuoAEIUO]/, "")
  end
end
