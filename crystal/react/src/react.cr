module React
  class InputCell
    property value : Int32

    def initialize(@value : Int32)
    end

    def + (n : Int32)
      @value += n
    end
  end

  class ComputeCell
    property value : React::InputCell

    def initialize(@value : React::InputCell)
      yield @value
    end

    def value
      @value.value
    end
  end
end