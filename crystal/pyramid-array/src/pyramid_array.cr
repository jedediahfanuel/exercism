def pyramid(n : Int32) : Array(Array(Int32))
  (1..n).map { |i| i.times.map { |_| 1 }.to_a }
end
