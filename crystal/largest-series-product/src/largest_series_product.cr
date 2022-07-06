class Series
  def initialize(@value : String)
    @value = @value.strip
  end

  def largest_product(d : Int32)
    raise ArgumentError.new unless @value.scan(/\D/).empty?
    raise ArgumentError.new unless @value.size > d
  end
end
