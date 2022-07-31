def pyramid(n : Int32) : Array(Array(Int32))
  (1..n).map { |i| i.times.map { |_| 1 }.to_a }
end

def pyramid_two(n)
  (1..n).map {|a| [1] * a}
end

def pyramid_three(n)
  (1..n).map { |i| Array.new(i) { 1 } }
end
