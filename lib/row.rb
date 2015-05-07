require_relative 'spot'
require 'pry'

class Row
  attr_reader :spots, :empty_spots

  def initialize(spots)
    @spots = spots
  end

  def check_row
    @spots.each do |spot|
      if spot.solved?
        empty_spots.each { |a_spot| a_spot.reduce_possibilities(spot.value) }
      end
    end
  end

  def empty_spots
    @spots.reject(&:solved?)
  end

end


# row = Row.new
# input = '12 456789'
# row.set_up_rows(input)
# reduced = row.reduce_possibilities
#
# puts reduced
#
# solved = row.fill_empty_spots
# print solved
