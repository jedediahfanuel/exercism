def duplicate_count(text : String) : Int32
  text.downcase.chars.tally.count { |_, v| v > 1 }
end

