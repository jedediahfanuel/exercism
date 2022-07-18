class Proverb
  def self.recite(term : Array(String)) : Array(String)
    res = [] of String
    
    (1...term.size).each do |i|
      res << "For want of a #{term[i-1]} the #{term[i]} was lost."
    end
    
    res << "And all for the want of a #{term[0]}." if term.any?
    
    res
  end
  
  def self.recite_two(wants)
    return wants if wants.empty?
    wants.each.cons_pair.map do |(a, b)|
      "For want of a #{a} the #{b} was lost."
    end.to_a << "And all for the want of a #{wants[0]}."
  end  
end

