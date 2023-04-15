module WordCount
  def self.count_words(s : String) : Hash(String, Int32)
    s.lines.join.scan(/\b\w+(?:'\w+)?\b/).map(&.[0].downcase).tally
  end
end
