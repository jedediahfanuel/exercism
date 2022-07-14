class Array
  @@token : Hash(String, String) = { "keep" => "if", "discard" => "unless" }
  
  {% for name in %w{keep discard} %}
    def {{name.id}}(&block : T -> Bool)
      self.map do |x|
        case @@token["{{name.id}}"]
        when "if" then x if yield x
        else           x unless yield x
        end
      end.compact
    end
  {% end %}
end

