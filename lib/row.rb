class Row
  attr_reader :data, :possibilities

  def initialize
    @data = []
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end

  def set_up_rows(input)
    rows = input.split('/n')
    rows.map do |row|
      numbers = row.split("")
      numbers.each do |n|
        n.to_i
    # @data = input
    # @data.map! { |x| x == '' ? 0 : x }
    # # @data.push(0) until @data.length == 9
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

end

def solve(input)
  set_up_row(input)
  reduce_possibilities
  fill_empty_spots
end
