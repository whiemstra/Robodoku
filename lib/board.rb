require_relative 'row'
require_relative 'column'
require_relative 'solver'
require 'pry'

class Board
  attr_reader :input, :grid

  def initialize(input)
    # binding.pry
    @input = input
    @grid = []
  end

  def set_up_grid
    row = @input.chars
    nums = row.map { |x| x.to_i }
    rows = nums.each_slice(9).map { |i| i }
    # @grid << rows
  end



  # input = '123456789123456789'
  # x = input.split('')
  # y = x.map { |x| x.to_i }
  # y.each_slice(9) { |i| p i }

  # def set_up_grid
  #   rows = input.split('\n')
  #   rows.map do |row|
  #     numbers = row.split("")
  #     numbers.each do |n|
  #       n.to_i
  #     end
  #   end
  # end

end
