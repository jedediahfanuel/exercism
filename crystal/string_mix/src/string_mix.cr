def mix(s1, s2)
  s1, s2 = s1.scan(/[a-z]/).map(&.[0]).tally, s2.scan(/[a-z]/).map(&.[0]).tally
  
end
