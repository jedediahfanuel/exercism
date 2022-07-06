class PascalsTriangle
  def self.rows(r : Int32) : Array(Array(Int32))
    result = [] of Array(Int32)
    
    r.times do |i|
      row = Array(Int32).new(i+1, 0)

      (0..i).each do |j|
        if j == 0 || j == i
          row[j] = 1
        else
          row[j] = result[i-1][j-1] + result[i-1][j]
        end
      end

      result << row
    end

    result
  end
end

PascalsTriangle.rows(3).each do |x|
  puts x
end
# ber = [] of Array(Int32)
# ber.push [1]

# (1..3).each do |i|
#   rrr = Array.new(i+1, 0)
#   rrr[i] = i + 10
#   ber << rrr
# end

# puts ber