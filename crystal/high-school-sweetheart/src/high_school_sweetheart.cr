class HighSchoolSweetheart
  def self.clean_up_name(name)
    name.gsub('-', ' ').strip
  end

  def self.first_letter(name)
    self.clean_up_name(name)[0].to_s
  end

  def self.initial(name)
    self.first_letter(name).upcase.insert(-1, '.')
  end

  def self.pair(name1, name2)
    "❤ #{initial(name1)}  +  #{initial(name2)} ❤"
  end
end
