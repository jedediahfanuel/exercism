require "levenshtein"

class Hamming
  def self.distance(left : String, right : String) : Int32
    raise ArgumentError.new "Left.size != Right.size" if left.size != right.size
    count = 0_i32
    left.size.times do |i|
      count += 1 if left[i] != right[i]
    end
    count

    # a.size.times.count { |i| a[i] != b[i] }
  end
end
