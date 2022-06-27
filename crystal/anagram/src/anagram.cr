class Anagram
  def self.find(str : String, arr : Array(String)) : Array(String)
    res = [] of String
    str = str.upcase
    x = str.chars.sort.join

    arr.each do |s|
      next if str.size != s.size
      next if str == s.upcase

      y = s.upcase.chars.sort.join

      if x == y
        res << s
      end
    end

    res
  end

  def self.find_2nd(word : String, candidates)
    candidates
      .reject { |candidate| word.downcase == candidate.downcase }
      .select { |candidate| word.downcase.chars.sort == candidate.downcase.chars.sort }
  end
end