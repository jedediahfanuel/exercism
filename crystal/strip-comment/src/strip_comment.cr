class StripComment
  def self.solution(s : String, markers : Array(String))
    return s if markers.empty?
    markers, b = Regex.new("( *)(" + markers.map(&.rjust(2, '\\')).join("|") + ")"), 0
    
    while true
      a = s.index(markers, b)
      return s unless a
      b = s.index(/\n/, a)
      return s.delete_at(a..) unless b
      s = s.delete_at(a...b)
    end
  end
end
