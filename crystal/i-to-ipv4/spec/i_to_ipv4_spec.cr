def int32_to_ip(i : UInt32) : String
  to_binary(i).chars.each_slice(8).map do |x|
    x.join.to_u32(2)
  end.join(".")
end

def to_binary(ten_base_num : UInt32)
  res = [] of UInt32
  while ten_base_num > 0
    res.unshift ten_base_num % 2
    ten_base_num //= 2
  end
  res.empty? ? [0] : res
  res.join.rjust(32, '0')
end
