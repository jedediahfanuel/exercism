module RotationalCipher
  @@ALPHA = "abcdefghijklmnopqrstuvwxyz"
  def self.rotate(plaintext : String, key : Number) : String
    plaintext.tr @@ALPHA + @@ALPHA.upcase, @@ALPHA.chars.rotate(key).join + @@ALPHA.upcase.chars.rotate(key).join
  end
end
