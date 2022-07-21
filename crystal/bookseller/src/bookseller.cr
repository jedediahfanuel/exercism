class Bookseller
  def self.stock_list(library, target) : String
    return "" if target.empty? || library.empty?
    hash = Hash(String, Int32).new
    library.each do |i|
      ary = i.split
      key, value = ary[0][0].to_s, ary[1].to_i
      hash[key] = hash.has_key?(key) ? hash[key] + value : value
    end
    target.map { |c| "(#{c} : #{hash[c]? ? hash[c] : 0})" }.join(" - ")
  end
end

