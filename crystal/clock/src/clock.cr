class Clock
  property hour : Int32
  property minute : Int32

  def initialize(@hour = 0, @minute = 0) 

  end

  def to_s : String
    String.build(5) do |buffer|
      h = hour  .to_s.rjust(2, '0')
      m = minute.to_s.rjust(2, '0')
      buffer << "#{h}:#{m}"
    end
  end

  def + (c : Clock) : Clock
    Clock.new(self.hour += c.hour, self.minute += c.minute)
  end
  
  def - (c : Clock) : Clock
    Clock.new(self.hour -= c.hour, self.minute -= c.minute)
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