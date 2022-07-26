class CommonDenominators
  alias AA32 = Array(Array(Int32))
  
  def self.convert_fracts(ary : AA32) : AA32
    lcm = ary.reduce(1) { |acc, i| acc = i[1].lcm(acc) }
    ary.map { |i| [lcm // i[1] * i[0], lcm] }
  end
end
