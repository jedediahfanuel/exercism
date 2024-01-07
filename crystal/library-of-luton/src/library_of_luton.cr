class Library
  def self.first_letter(title : String) : Char
    title[0]
  end

  def self.initials(first_name : String, last_name : String) : String
    "#{first_letter(first_name)}.#{first_letter(last_name)}"
  end

  def self.decrypt_character(c : Char) : Char
    case {c.letter?, c.uppercase?}
    when {true, true } then c -= 1; c = 'Z' if c.ord < 65
    when {true, false} then c -= 1; c = 'z' if c.ord < 97
    else end; c
  end

  def self.decrypt_text(text : String) : String
    text.chars.map { |c| decrypt_character(c) }.join
  end
end
