class ResistorColorDuo
  @@colors : Hash(String, Char) = {
    "black"  => '0', "brown"  => '1', "red"    => '2', "orange" => '3', "yellow" => '4',
    "green"  => '5', "blue"   => '6', "violet" => '7', "grey"   => '8', "white"  => '9'
  }
  
  def self.value(c : Array(String)) : Int8
    (@@colors[c[0].downcase] + "" + @@colors[c[1].downcase]).to_i8
  end
end
