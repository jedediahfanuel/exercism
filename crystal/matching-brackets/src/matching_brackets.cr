class MatchingBrackets
  def self.valid?(brackets : String) : Bool
    arr = Array(Char).new

    brackets.each_char do |b|
      case b
      when '[', '{', '('
        arr << b
      when ']', '}', ')'
        top = arr.pop?
        return false if top == nil
        
        case b
        when ']'
          return false if top != '['
        when '}'
          return false if top != '{'
        when ')'
          return false if top != '('
        end
      end
    end

    arr.empty?
  end
end
