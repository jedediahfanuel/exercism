class Year
  def self.leap?(year : Int32) : Bool
    return true  if year.divisible_by?(400)
    return false if year.divisible_by?(100)
    return year.divisible_by?(4) ? true : false
  end
end