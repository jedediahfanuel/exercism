module SaddlePoints
  def self.saddle_points(matrix : Array(Array(Int32))) : Set(NamedTuple(row: Int32, column: Int32))
    result = Set.new [] of NamedTuple(row: Int32, column: Int32)
    return result if matrix.empty?
    
    row_max, col_min = matrix.map &.max, matrix.transpose.map &.min

    row_max.each_with_index do |row, i|
      next if row != row_max.min

      col_min.each_with_index do |col, j|
        next if col != row
        result << { row: i+1, column: j+1 }
      end
    end
    
    result
  end
end
