class Bob
  def self.hey(he_got : String)
    return "Fine. Be that way!" if he_got.blank?

    case {question?(he_got), scream?(he_got)}
    in {true, false}
      return "Sure."
    in {false, true}
      return "Whoa, chill out!"
    in {true, true}
      return "Calm down, I know what I'm doing!"
    in {false, false}
      return "Whatever."
    end
  end

  private def self.question?(your_words : String) : Bool your_words.ends_with?("?") end

  private def self.scream?(your_words : String) : Bool
    alphabet = your_words.scan(/[a-zA-Z']+/)
    return false if alphabet.size < 1

    alphabet.map do |str|
      str[0].each_char do |c|
        return false if c >= 'a' && c <= 'z'
      end
    end

    true
  end

  private def self.yelled?(msg)
    msg == msg.upcase && msg != msg.downcase
  end

  # Another
  def self.hey(s)
    if s.blank?
        return "Fine. Be that way!"
    end
    if /[A-Z]/ =~ s && /[a-z]/ !~ s
        if /\?$/ =~ s
            return "Calm down, I know what I'm doing!"
        end
        return "Whoa, chill out!"
    end
    if /\?$/ =~ s
        return "Sure."
    end
    "Whatever."
  end
end
