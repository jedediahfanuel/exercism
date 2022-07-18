class Proverb
  def self.recite(term : Array(String)) : Array(String)
    res = [] of String
    
    (1...term.size).each do |i|
      res << "For want of a #{term[i-1]} the #{term[i]} was lost."
    end
    
    res << "And all for the want of a #{term[0]}." if term.any?
    
    res
  end
end

