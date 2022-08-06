class Postcode
  def self.generate_postcode()
    r, l, n = Random.new, Range.new(65, 90), Range.new(0, 9)

    String.build do |str|
      str << r.rand(l).chr
      str << r.rand(l).chr
      str << r.rand(n)
      str << " "
      str << r.rand(n)
      str << r.rand(l).chr
      str << r.rand(l).chr
    end
  end
  
  def self.generate_postcode_two()
    s = ('A'..'Z').to_a.sample
    digits = (1..9).to_a.sample
    "#{s}#{s}#{digits} #{digits}#{s}#{s}"
  end
end
