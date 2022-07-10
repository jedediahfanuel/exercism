class RnaComplement
  @@code : Hash(Char, String) = {
    'C' => "G", 'G' => "C", 'T' => "A", 'A' => "U"
  }
  
  def self.of_dna(c : String) : String
    c.upcase.chars.map { |x| @@code[x] }.join
  end
  
  def self.of_dna_two(dna : String)
    dna.gsub({'A' => 'U', 'G' => 'C', 'C' => 'G', 'T' => 'A'})
  end
  
  def self.of_dna_three(dna)
    dna.tr("CGTA", "GCAU")
  end
end

