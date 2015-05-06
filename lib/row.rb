class Row
  attr_reader :data, :possibilities

  def initialize
    @data = []
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end

  def set_up_rows(input)
    @data = input.split('').map { |x| x.to_i }
  end
end
