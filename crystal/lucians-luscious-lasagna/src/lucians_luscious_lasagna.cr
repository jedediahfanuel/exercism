class LuciansLusciousLasagna
  def self.expected_minutes_in_oven() : Int32
    # According to the coocking book, the exepected oven time in minutes is 40
    40
  end
  
  def self.remaining_minutes_in_oven(actual_minutes_in_oven : Int32) : Int32
    40 - actual_minutes_in_oven
  end
  
  def self.preparation_time_in_minutes(number_of_layers : Int32) : Int32
    # Each layer of lasagna assumed to be 2 minutes preparation time
    number_of_layers * 2
  end
  
  def self.elapsed_time_in_minutes(number_of_layers: Int32, actual_minutes_in_oven: Int32) : Int32
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end
