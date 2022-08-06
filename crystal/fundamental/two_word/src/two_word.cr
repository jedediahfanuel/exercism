def abbrev_name(name)
  name.split.map { |word| word.char_at(0).upcase }.join(".")
end

def abbrev_name_two(name)
  first, last = name.upcase.split
  "#{first[0]}.#{last[0]}"
end


