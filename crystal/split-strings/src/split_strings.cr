class SplitStrings
  def self.split(s : String)
    s += '_' if s.size.odd?
    s.each_char.slice(2).to_a.map(&.join)
  end
end
