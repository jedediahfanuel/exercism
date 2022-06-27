class AtbashCipher
  @@CIPHER = Hash(Char, Char){ 'a' => 'z', 'b' => 'y', 'c' => 'x', 'd' => 'w', 'e' => 'v', 'f' => 'u', 'g' => 't', 'h' => 's', 'i' => 'r', 'j' => 'q', 'k' => 'p', 'l' => 'o', 'm' => 'n', 'z' => 'a', 'y' => 'b', 'x' => 'c', 'w' => 'd', 'v' => 'e', 'u' => 'f', 't' => 'g', 's' => 'h', 'r' => 'i', 'q' => 'j', 'p' => 'k', 'o' => 'l', 'n' => 'm', '1' => '1', '2' => '2', '3' => '3', '4' => '4', '5' => '5', '6' => '6', '7' => '7', '8' => '8', '9' => '9', '0' => '0' }

  def self.encode(str : String) : String
    result, i = "", 0
    str.downcase.each_char do |c| result += " " if i % 5 == 0 && result.size > 0 && @@CIPHER[c]?
      if @@CIPHER[c]?
        result += @@CIPHER[c]
        i += 1
      end
    end

    result
  end

  def self.decode(str : String) : String
    str.each_char.map { |c| c = @@CIPHER[c] if @@CIPHER[c]? }.reject { |c| c == ' ' }.join
  end
end
