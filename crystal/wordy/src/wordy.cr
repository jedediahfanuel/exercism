module Wordy
  def self.answer(question : String) : Number
    elm = question[...-1].scan(/[-]?\d+|(?:plus|minus|multiplied by|divided by)/).map &.[0]

    raise ArgumentError.new if elm.empty?
    raise ArgumentError.new if elm.size == 1 && question != "What is #{elm[0]}?"

    ans = elm.shift.to_i

    elm.each_slice(2).reduce(ans) do |acc, i|
      raise ArgumentError.new if i.none? { |w| check w }
      acc = operate(acc, i.first, i.last.to_i)
    end
  end

  def self.check(s : String) ["plus", "minus", "multiplied by", "divided by"].includes? s end

  def self.operate(ans : Number, o : String, n : Number)
    return ans + n if o == "plus"
    return ans - n if o == "minus"
    return ans * n if o == "multiplied by"
    return ans / n
  end
end
