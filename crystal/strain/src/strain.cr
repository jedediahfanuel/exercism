class Array
  def keep(&block : T -> Bool)
    self.map do |x|
      x if yield x
    end.compact
  end
  def discard(&block : T -> Bool)
    self.map do |x|
      x unless yield x
    end.compact
  end
end

class Array_two
  @@token : Hash(String, String) = { "keep" => "keep", "discard" => "discard" }
  
  {% for name in %w{keep discard} %}
    def {{name.id}}(&block : T -> Bool)
      self.map do |x|
        case @@token["{{name.id}}"]
        when "keep" then x if     yield x
        else             x unless yield x
        end
      end.compact
    end
  {% end %}
end

