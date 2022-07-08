class ResistorColor
  @@colors : Hash(String, Int8) = {
    "black"  => 0_i8, "brown"  => 1_i8, "red"    => 2_i8, "orange" => 3_i8, "yellow" => 4_i8,
    "green"  => 5_i8, "blue"   => 6_i8, "violet" => 7_i8, "grey"   => 8_i8, "white"  => 9_i8
  }
  
  def self.colors : Array(String)
    @@colors.keys
  end
  
  def self.color_code(c : String) : Int8
    @@colors[c.downcase]
  end
end
