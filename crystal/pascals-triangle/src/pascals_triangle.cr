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
