module Sublist
  enum Classification ; Equal ; Unequal ; Sublist ; Superlist ; end

  def self.classify(x : Array(Int32), y : Array(Int32)) : Classification
    return Classification::Equal     if x == y
    return Classification::Sublist   if x.size < y.size && y.join(" ").matches? Regex.new x.join " "
    return Classification::Superlist if x.size > y.size && x.join(" ").matches? Regex.new y.join " "
    return Classification::Unequal  end end