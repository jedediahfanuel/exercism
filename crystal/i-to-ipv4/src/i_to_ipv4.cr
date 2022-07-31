def int32_to_ip(i : UInt32) : String
  i.to_s(2).rjust(32, '0').chars.each_slice(8).map do |x|
    x.join.to_u32(2)
  end.join(".")
end
