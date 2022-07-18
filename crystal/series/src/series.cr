class Series
  def self.slices(s : String, n : Int32)
    raise ArgumentError.new if n < 1 || n > s.size || s.empty?
    s.chars.each.cons(n).map(&.join).to_a
  end
end

