class Row
  attr_reader :data, :possibilities

  def initialize
    @data = []
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end

  def set_up_rows(input)
    @data = input.split('').map { |x| x.to_i }
  end

  def solve(input)
    remaining_poss = possibilities.delete_if { |i| input.include?(i) }
    if remaining_poss.length == 1
      input.map! { |i| i == 0 ? remaining_poss : i }.flatten
    end
  end
end
