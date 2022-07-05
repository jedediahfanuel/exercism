require "levenshtein"

class Hamming
  def self.distance(left : String, right : String) : Int32
    raise ArgumentError.new "Left.size != Right.size" if left.size != right.size
    Levenshtein.distance(left, right)
  end
end
