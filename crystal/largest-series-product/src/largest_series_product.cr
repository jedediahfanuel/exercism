class LargestSeriesProduct
  def initialize(@value : String)
    raise ArgumentError.new unless @value.scan(/\D/).empty?
    @value = @value.strip
  end

  def largest_product(digit : Int32)
    raise ArgumentError.new if @value.size < digit || digit < 0
    return 1 if digit == 0

    @value.each_char.cons(digit).max_of(&.product(&.to_u64))
  end
end
