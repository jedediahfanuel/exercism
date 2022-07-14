class Luhn
  def self.valid?(s : String) : Bool
    s = s.gsub(" ", "")
    
    return false if s.size < 2 || s.matches?(/\D/)
    
    true
  end
end

puts Luhn.valid? "0000 000"
