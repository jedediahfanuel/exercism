class Tortoise
  def self.race(v1, v2, g)
    return [-1, -1, -1] if v1 >= v2
    s = (g * 3600) / (v2 - v1)
    [(s // 3600).to_i, ((s % 3600) // 60).to_i, (s % 60).to_i]
  end
end

# https://stackoverflow.com/a/51606488
