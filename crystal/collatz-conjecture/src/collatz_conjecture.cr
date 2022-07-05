class CollatzConjecture
  def self.steps(n : Int32)
    raise ArgumentError.new if n < 1
    n.times do |i|
      return i if n == 1
      n = n.even? ? (n / 2).to_i : (3 * n + 1)
    end
  end
end
