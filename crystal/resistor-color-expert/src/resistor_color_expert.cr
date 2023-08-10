module ResistorColorExpert
  @@colors : Hash(String, Int32) = { "black"  => 0, "brown" => 1, "red" => 2, "orange" => 3, "yellow" => 4, "green" => 5, "blue" => 6, "violet" => 7, "grey" => 8, "white" => 9 }
  @@metric : Hash(Int32, String) = { 0 => "", 1 => "kilo", 2 => "mega", 3 => "giga", 4 => "tera", 5 => "peta", 6 => "exa", 7 => "zetta", 8 => "yotta", 9 => "ronna", 10 => "quetta" }
  @@tolerance : Hash(String, String) = { "grey" => "0.05", "violet" => "0.1", "blue" => "0.25", "green" => "0.5", "brown" => "1", "red" => "2", "gold" => "5", "silver" => "10" }

  def self.resistor_label(bends : Array(String)) : String
    return "0 ohms" if bends[0..(bends.size - 3)].all? { |b| b == "black" }

    value = bends[0..-3].map { |b| @@colors[b] }.join.lstrip('0')

    full  = value + "0" * @@colors[bends[-2]]

    div   = (full.size - 1) // 3
    mod   = (full.size % 3)

    value      = div.zero? ? full : full.insert(mod, '.').rstrip('0').rstrip('.')
    multiplier = " "  + @@metric[div]          + "ohms"
    tolerance  = " ±" + @@tolerance[bends[-1]] + "%"

    value + multiplier + tolerance
  end
end
