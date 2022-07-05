class Isogram
  def self.isogram?(s : String)
    arr = s.downcase.chars.reject { |c| c == ' ' || c == '-' }
    return true if arr.size < 1

    arr.size == Set.new(arr).size ? true : false
  end
end
