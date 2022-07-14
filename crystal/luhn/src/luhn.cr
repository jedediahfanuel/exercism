class Luhn
  def self.valid?(s : String) : Bool
    s = s.gsub(" ", "")
    
    return false if s.size < 2 || s.matches?(/\D/)
    
    s.chars.reverse.map_with_index(offset = 1) do |d, i|
      if i.even?
        d = d.to_i * 2
        d = d > 9 ? d - 9 : d
      end
      d.to_i
    end.sum.divisible_by? 10
  end
end

