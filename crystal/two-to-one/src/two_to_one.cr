module TwoToOne
  def self.longest(a : String, b : String) : String
    (a + b).downcase.chars.uniq.sort.join
  end
end
