class Grains
  def self.square(n : Int32) : UInt128
    raise ArgumentError.new if n < 1 || n > 64
    2.to_u128**(n - 1)
  end
  
  def self.total : UInt128
    2.to_u128**64 - 1
  end
end
