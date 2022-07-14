class Array
  def keep(&block : T -> Bool)
    self.map do |x|
      x if yield x
    end.compact
  end
  def discard(&block : T -> Bool)
    self.map do |x|
      x unless yield x
    end.compact
  end
end

