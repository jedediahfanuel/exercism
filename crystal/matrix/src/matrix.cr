class Matrix
  @m : Array(Array(Int32))

  def initialize(str : String)
    @m = str.lines.map &.split.map { |n| n.to_i }.to_a
  end

  def row(i : Int) @m[i-1] end

  def column(i : Int)
    @m.each.map { |e| e[i-1] }.to_a
  end
end
