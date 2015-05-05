class Column
  attr_reader :data, :possibilities

  def initialize
    @data = []
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end

  def set_up_column(input)
    @data = input
    @data.push(0) until @data.length == 9
  end

  def reduce_possibilities
    data.map do |num|
      @possibilities.delete(num)
    end
    @possibilities
  end

  def fill_empty_spots
    @data = data.map do |num|
      if num == 0
        num = @possibilities.first
      else
        num
      end
    end
    data
  end

  def solve(input)
    set_up_column(input)
    reduce_possibilities
    fill_empty_spots
  end
end
