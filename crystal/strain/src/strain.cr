class Array
  def keep(&block : T -> Bool)
    ary = [] of T
    
    self.each do |x|
      ary << x if yield x
    end
    
    ary
  end
  
  def discard(&block : T -> Bool)
    ary = [] of T
    
    self.each do |x|
      ary << x unless yield x
    end
    
    ary
  end
end

