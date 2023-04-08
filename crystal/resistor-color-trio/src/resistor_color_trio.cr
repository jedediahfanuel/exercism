module ResistorColorTrio
  @@colors : Hash(String, Char) = { "black"  => '0', "brown" => '1', "red" => '2', "orange" => '3', "yellow" => '4', "green" => '5', "blue" => '6', "violet" => '7', "grey" => '8', "white" => '9' }
  @@metric : Hash(Int32, String) = { 0 => "", 1 => "kilo", 2 => "mega", 3 => "giga", 4 => "tera", 5 => "peta", 6 => "exa", 7 => "zetta", 8 => "yotta", 9 => "ronna", 10 => "quetta" }

  def self.label(c : Array(String)) : String
    return "0 ohms" if c[0] == "black" && c[1] == "black"
    self.first(c[0], c[1]) + "" + self.second(c[1]) + "" + self.third(c[1], c[2])
  end

  private def self.first(f : String, s : String)
    f == "black" && s != "black" ? "" : @@colors[f]
  end

  private def self.second(s : String)
    @@colors[s] != '0' ? @@colors[s] : ""
  end

  private def self.third(s : String, t : String)
    t = @@colors[t].to_i + (s == "black" ? 1 : 0)
    "0" * (t % 3) + " " + @@metric[t // 3] + "ohms"
  end
end
