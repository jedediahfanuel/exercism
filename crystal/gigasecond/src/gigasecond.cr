class Gigasecond
  def self.from(t : Time) : Time
    t.shift 10**9, 0
  end
end
