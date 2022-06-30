class Clock
  property hour : Int32
  property minute : Int32

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

  def + (c : Clock) : Clock
    h = @hour   += c.hour
    m = @minute += c.minute
    Clock.new(h, m)
  end
  
  def - (c : Clock) : Clock
    h = @hour   -= c.hour
    m = @minute -= c.minute
    Clock.new(h, m)
  end
end

puts "Clock check"
c = Clock.new 1, -40

puts "Hour   : #{c.hour}"
puts "Minute : #{c.minute}"
