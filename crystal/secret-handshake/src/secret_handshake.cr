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

