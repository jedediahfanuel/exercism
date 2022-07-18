class SecretHandshake
  def self.commands(num : Int32) : Array(String)
    recursive num.to_s(2)
  end
  
  private def self.recursive(binary : String) : Array(String)
    b = binary.lstrip('0')
    case b.size
    when 5 then return recursive(b.lchop).reverse
    when 4 then return recursive(b.lchop) + ["jump"]
    when 3 then return recursive(b.lchop) + ["close your eyes"]
    when 2 then return recursive(b.lchop) + ["double blink"]
    when 1 then return ["wink"]
    else [] of String
    end
  end
end

module SecHand
  WINK         =     0b1
  DOUBLE_BLINK =    0b10
  CLOSE_EYES   =   0b100
  JUMP         =  0b1000
  REVERSE      = 0b10000
  def self.commands_two(input)
    handshake = [] of String
    handshake << "wink" if input.bits_set?(WINK)
    handshake << "double blink" if input.bits_set?(DOUBLE_BLINK)
    handshake << "close your eyes" if input.bits_set?(CLOSE_EYES)
    handshake << "jump" if input.bits_set?(JUMP)
    handshake.reverse! if input.bits_set?(REVERSE)
    handshake
  end
  
  def self.commands_three(n : Int) : Array(String)
    out = [] of String
    out << "wink"            if n.bit(0) == 1
    out << "double blink"    if n.bit(1) == 1
    out << "close your eyes" if n.bit(2) == 1
    out << "jump"            if n.bit(3) == 1
    out.reverse!             if n.bit(4) == 1
    out
  end
end

