module SpellboundSteel
  POWER = {"Warrior" => 10, "Mage" => 20, "Rogue" => 30, "Fireball" => 15, "Ice Storm" => 25, "Lightning Bolt" => 35}

  def self.find_card?(cards, card)
    cards.index(card)
  end

  def self.capitalize_names(characters)
    characters.map(&.split.map(&.capitalize).join(" "))
  end

  def self.calculate_power_level(cards)
    cards.sum { |c| POWER[c] }
  end

  def self.decode_characters(character)
    POWER.each_key do |key|
      pos, arr = 0, [] of Char

      key.downcase.each_char do |c|
        character.each_char_with_index(pos) do |s, i|
          if c == s
            arr << s
            pos = i+1

            return arr.join if arr.size == key.size
            break
          end
        end
      end
    end

    ""
  end
end
