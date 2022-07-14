class IsbnVerifier
  def self.valid?(isbn : String)
    isbn = isbn.gsub("-", "").chars.reverse
    return false if isbn.size != 10
    
    isbn.map_with_index do |c, i|
      i += 1
      if !c.ascii_number?
        if c == 'X' && i == 1
          10 * i
        else
          return false
        end
      else
        c.to_i * i
      end
    end.sum.divisible_by? 11
  end
end

