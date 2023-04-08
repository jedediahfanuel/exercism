module NucleotideCount
  def self.nucleotide_counts(nucleotides : String) : Hash(Char, Int32)
    raise ArgumentError.new if nucleotides.matches?(/[^ACGT]/)
    { 'A' => nucleotides.count('A'), 'C' => nucleotides.count('C'), 'G' => nucleotides.count('G'), 'T' => nucleotides.count('T') }
  end

  def self.nucleotide_counts_two(nucleotides : String) : Hash(Char, Int32)
    raise ArgumentError.new if nucleotides.matches?(/[^ACGT]/)
    {'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0}.merge(nucleotides.chars.tally)
  end
end
