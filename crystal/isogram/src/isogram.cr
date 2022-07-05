class Isogram
  def self.isogram?(s : String)
    arr = s.downcase.chars.reject { |c| c == ' ' || c == '-' }
    arr.size == Set.new(arr).size ? true : false
    # arr.size == arr.uniq.size ? true : false
  end
end
