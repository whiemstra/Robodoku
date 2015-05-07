require_relative 'spot'
require 'pry'

class Row
  attr_reader :spots, :possibilities, :fill_empty_spots

  def initialize(spots)
    @spots = spots
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end

  def reduce_possibilities(num)
    @possibilities.delete(num)
      if possibilities.length == 1
        num = possibilities.first
      end
  end

  def check_row
    @spots.each do |spot|
      if spot.solved?
        empty_spots.each { |empty_spot| empty_spot.reduce_possibilities(spot.value) }
      end
    end
  end

  def empty_spots
    @spots.reject(&:solved?)
  end

  # def fill_empty_spots
  #   empty_spots.each { |empty_spot| empty_spot.reduce_possibilities(spot.value) }
  # end

end

#
# # row = Row.new
# # input = '12 456789'
# # row.set_up_rows(input)
# # reduced = row.reduce_possibilities
# #
# # puts reduced
# #
# # solved = row.fill_empty_spots
# # print solved
