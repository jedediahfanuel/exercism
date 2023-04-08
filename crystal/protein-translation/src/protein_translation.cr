class ProteinTranslation
  def self.proteins(s : String)
    raise ArgumentError.new if s.size % 3 != 0 && !s.matches?(/UAA|UAG|UGA/)
    r = [] of String
    s.scan(/.{3}/).map(&.[0]).each do |x| case x
      when "AUG"                      then r << "Methionine"
      when "UUU", "UUC"               then r << "Phenylalanine"
      when "UUA", "UUG"               then r << "Leucine"
      when "UCU", "UCC", "UCA", "UCG" then r << "Serine"
      when "UAU", "UAC"               then r << "Tyrosine"
      when "UGU", "UGC"               then r << "Cysteine"
      when "UGG"                      then r << "Tryptophan"
      when "UAA", "UAG", "UGA"        then break
      else raise ArgumentError.new ;  end
    end ; r
  end
end

