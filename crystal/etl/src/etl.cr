class ETL
  def self.transform(input : Hash(String, Array(String))) : Hash(String, Int32)
    hsh = Hash(String, Int32).new

    input.each do |key, value|
      value.each do |c|
        hsh[c.downcase] = key.to_i
      end
    end

    hsh
  end
end
