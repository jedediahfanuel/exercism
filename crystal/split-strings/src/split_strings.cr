class SplitStrings
  def self.split(s : String)
    s += '_' if s.size.odd?
    s.each_char.slice(2).to_a.map(&.join)
  end
  
  def self.split_two(s : String)
    s.chars.in_groups_of(2, '_').map(&.join)
  end
end
