module Sublist
  enum Classification ; Equal ; Unequal ; Sublist ; Superlist ; end

  def self.classify(list1 : Array(Int32), list2 : Array(Int32)) : Classification
    return Classification::Equal     if list1 == list2
    return Classification::Sublist   if list1.empty?
    return Classification::Sublist   if list1.size < list2.size && list2.each_cons(list1.size).any? list1
    return Classification::Superlist if list2.empty?
    return Classification::Superlist if list1.size > list2.size && list1.each_cons(list2.size).any? list2
    return Classification::Unequal 
  end
end
