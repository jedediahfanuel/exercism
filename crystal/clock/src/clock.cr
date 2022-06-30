class Clock
  property hour, minute : Int32

  def initialize(@hour = 0, @minute = 0) 
    clock_check
  end

  def to_s : String
    String.build(5) do |buffer|
      h = hour  .to_s.rjust(2, '0')
      m = minute.to_s.rjust(2, '0')
      buffer << "#{h}:#{m}"
    end
  end

  private def clock_check
    @hour   += @minute // 60
    @hour   %= 24
    @minute %= 60
  end

  def + (c : Clock) : self
    @hour   += c.hour
    @minute += c.minute
    clock_check
    self
  end
  
  def - (c : Clock) : self
    @hour   -= c.hour
    @minute -= c.minute
    clock_check
    self
  end

  def == (c : Clock)
    @minute == c.minute && @hour == c.hour
  end
end
