class Series
  def initialize(@value : String)
    @value = @value.strip
  end

  def largest_product(digit : Int32)
    raise ArgumentError.new unless @value.scan(/\D/).empty?
    raise ArgumentError.new if @value.size < digit
    raise ArgumentError.new if digit < 0
    return 1 if digit == 0

    largest = 0
    @value.to_i128.digits.each_cons(digit) do |series|
      largest = series.product > largest ? series.product : largest
    end

    largest
  end
end
