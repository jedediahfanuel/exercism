class RnaComplement
  @@code : Hash(Char, String) = {
    'C' => "G", 'G' => "C", 'T' => "A", 'A' => "U"
  }
  
  def self.of_dna(c : String) : String
    c.upcase.chars.map { |x| @@code[x] }.join
  end
end

