module SpellboundSteel
  def self.find_card?(cards, card)
    cards.index(card)
  end

  def self.capitalize_names(characters)
    characters.map(&.split.map(&.capitalize).join(" "))
  end

  def self.calculate_power_level(cards)
    raise "Please implement the SpellboundSteel.calculate_power_level method"
  end

  def self.decode_characters(character)
    raise "Please implement the SpellboundSteel.decode_characters method"
  end
end
