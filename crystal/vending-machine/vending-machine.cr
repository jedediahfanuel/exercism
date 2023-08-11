class VendingMachine
  @@products = [ "Aqua", "Sosro", "Cola", "Milo" ]
  @@price : Hash(String, Int32) = { "Aqua" => 2000, "Sosro" => 5000, "Cola" => 7000, "Milo" => 9000 }

  def self.buy(bills : Array(Int32))
    return "Invalid denomination" unless bills.all? { |b| b == 2000 || b == 5000 }
    return "Invalid denominatoin" if bills.size > 3
    saldo = bills.sum

    result = unique(saldo)
    result << repeat(bills)
    result = result.map { |x| x.sort }.uniq
    result.empty? ? "Invalid denomination" : result
  end

  def self.unique(saldo : Int32)
    @@products.size.times
      .map { |i| @@products.combinations(i+1) }.to_a
      .reduce { |ary, m| ary + m }.select { |b|
        b.map { |x| @@price[x] }.sum == saldo 
      }
  end

  def self.repeat(bills : Array(Int32))
    bills.map { |b| @@price.key_for(b) }
  end
end

z = VendingMachine.buy [5000, 5000, 5000]
p z