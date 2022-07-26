class Multiplication
  def self.table(size : Int32) : Array(Array(Int32))
    (1..size).map { |i| (1..size).map(&.* i) }
  end
end
