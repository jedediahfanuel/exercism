class Squares
  def self.square_of_sum(n : Int64) : Int64
    (((n**2) * (n + 1)**2) / 4).to_i64
  end

  def self.sum_of_squares(n : Int64) : Int64
    (n * (n + 1) * (2*n + 1) / 6).to_i64
  end
end
