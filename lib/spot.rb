class Spot
  attr_reader :value, :possibilities

  def initialize(value)
    @value = value.to_i
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end

  def reduce_possibilities(num)
    @possibilities.delete(num)
    if possibilities.length == 1
      @value = possibilities.first
    end
  end

  def solved?
    value != 0
  end

end
