class Acronym
  def self.abbreviate(str : String) : String
    str.split.flat_map do |s| 
      s.split("-", remove_empty: true).flat_map do |c|
        c.split("_", remove_empty: true).flat_map do |v|
          v[0].to_s.upcase
        end
      end
    end.join
  end
end
