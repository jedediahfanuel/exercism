class Series
  def initialize(@value : String)
    @value = @value.strip
  end

  def largest_product(d : Int32)
    raise ArgumentError.new unless @value.scan(/\D/).empty?
    raise ArgumentError.new if @value.size < d
    raise ArgumentError.new if d < 0
  end
end
