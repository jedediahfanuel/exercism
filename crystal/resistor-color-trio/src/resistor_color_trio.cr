module ResistorColorTrio
  @@colors : Hash(String, Char) = { "black"  => '0', "brown" => '1', "red" => '2', "orange" => '3', "yellow" => '4', "green" => '5', "blue" => '6', "violet" => '7', "grey" => '8', "white" => '9' }
  @@metric : Hash(Int32, String) = { 0 => "", 1 => "kilo", 2 => "mega", 3 => "giga", 4 => "tera", 5 => "peta", 6 => "exa", 7 => "zetta", 8 => "yotta", 9 => "ronna", 10 => "quetta" }

  def self.label(c : Array(String)) : String
    return "0 ohms" if c[0] == "black" && c[1] == "black"

    first = c[0] == "black" && c[1] != "black" ? "" : @@colors[c[0]]
    second = @@colors[c[1]] != '0' ? @@colors[c[1]] : ""

    t = @@colors[c[2]].to_i + (c[1] == "black" ? 1 : 0)
    third = "0" * (t % 3) + " " + @@metric[t // 3] + "ohms"
 
    first + "" + second + "" + third
  end
end
