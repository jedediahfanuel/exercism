class Clock
  property hour : Int32
  property minute : Int32

  def initialize(@hour = 0, @minute = 0) 

  end

  def to_s : String
    String.build(5) do |buffer|
      h = hour.to_s.rjust(2, '0')
      m = minute.to_s.rjust(2, '0')
      buffer << "#{h}:#{m}"
    end
  end

  def + (c : Clock)
    Clock.new(self.hour += c.hour, self.minute += c.minute)
  end
  
  def - (c : Clock) : Clock
    Clock.new(self.hour -= c.hour, self.minute -= c.minute)
  end
end
