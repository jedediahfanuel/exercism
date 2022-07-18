class LuciansLusciousLasagna
  def self.expected_minutes_in_oven() : Int32
    # According to the coocking book, the exepected oven time in minutes is 40
    40
  end
  
  def self.remaining_minutes_in_oven(actual_minutes_in_oven : Int32) : Int32
    40 - actual_minutes_in_oven
  end
end
