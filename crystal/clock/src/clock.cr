class Clock
  property hour : Int32
  property minute : Int32

  def initialize(@hour = 0, @minute = 0) 
    @minute = minutes_check @minute
    @hour   = hours_check @hour
  end

  def to_s : String
    String.build(5) do |buffer|
      h = hour  .to_s.rjust(2, '0')
      m = minute.to_s.rjust(2, '0')
      buffer << "#{h}:#{m}"
    end
  end

  def hours_check(h : Int32) : Int32
    h % 24
  end

  def minutes_check(m : Int32) : Int32
    self.hour += m // 60
    m % 60
  end

  def + (c : Clock) : Clock
    h = self.hour += c.hour
    m = self.minute += c.minute
    Clock.new(h, m)
  end
  
  def - (c : Clock) : Clock
    h = self.hour -= c.hour
    m = self.minute -= c.minute
    Clock.new(h, m)
  end
end

c = Clock.new 10, 10
puts c.hour
puts c.minute

d = Clock.new 2, 2
puts d.hour
puts d.minute

puts typeof(c - Clock.new(1, 3))

puts (c - d).to_s
puts

puts "Clock check"
c = Clock.new 72, 8640

puts "Hour   : #{c.hour}"
puts "Minute : #{c.minute}"
