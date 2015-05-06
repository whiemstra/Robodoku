class Row
  attr_reader :data, :possibilities

  def initialize
    @data = []
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end

  def set_up_rows(input)
    @data = input.split('').map { |x| x.to_i }
  end

  def reduce_possibilities
    # possibilities.delete_if { |i| input.include?(i) }
    data.map do |num|
      @possibilities.delete(num)
    end
    @possibilities
  end

  def fill_empty_spots
    if possibilities.length == 1
      data.map! { |i| i == 0 ? possibilities : i }.flatten
    end
  end

  # def solve(input)
  #
  #
  # end
end


# row = Row.new
# input = '12 4'
# row.set_up_rows(input)
# reduced = row.reduce_possibilities
#
# puts reduced
#
# solved = row.fill_empty_spots
# print solved
