require_relative 'spot'
require 'pry'

class Column
  attr_reader :spots, :empty_spots

  def initialize(spots)
    @spots = spots
  end

  def check_column
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
