def abbrev_name(name)
  name.split.map { |word| word.char_at(0).upcase }.join(".")
end
