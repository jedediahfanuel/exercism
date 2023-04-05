module BottleSong
  def self.recite(start_bottles : Int32, take_down : Int32)
    take_down.times.map { |i| [
      "#{get_string(start_bottles - i)} hanging on the wall,",
      "#{get_string(start_bottles - i)} hanging on the wall,",
      "And if one green bottle should accidentally fall,",
      "There'll be #{get_string(start_bottles - i - 1).downcase} hanging on the wall.",
      ""
    ]}.to_a.flatten[...-1]
  end
end

def get_string(n : Int32)
  case n
  when 10 then "Ten green bottles"
  when 9  then "Nine green bottles"
  when 8  then "Eight green bottles"
  when 7  then "Seven green bottles"
  when 6  then "Six green bottles"
  when 5  then "Five green bottles"
  when 4  then "Four green bottles"
  when 3  then "Three green bottles"
  when 2  then "Two green bottles"
  when 1  then "One green bottle"
  else         "No green bottles"
  end
end
