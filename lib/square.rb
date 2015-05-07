require_relative 'spot'
require 'pry'

class Square
  attr_reader :spots, :empty_spots

  def initialize(spots)
    @spots = spots
    # @possibilities = [1,2,3,4,5,6,7,8,9]
  end

  # def reduce_possibilities(num)
  #   @possibilities.delete(num)
  #   if possibilities.length == 1
  #     num = possibilities.first
  #   end
  # end

  def check_square
    @spots.each do |spot|
      if spot.solved?
        empty_spots.each { |empty_spot| empty_spot.reduce_possibilities(spot.value) }
      end
    end
  end

  def empty_spots
    @spots.reject(&:solved?)
  end

end
