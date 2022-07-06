class Raindrops
  def self.convert(n : Int32) : String
    result  = ""
    result += "Pling" if n.divisible_by?(3)
    result += "Plang" if n.divisible_by?(5)
    result += "Plong" if n.divisible_by?(7)
    result.blank? ? n.to_s : result
  end
end
