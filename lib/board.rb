require 'row'
require 'column'

class Board
  attr_reader :input, :grid

  def initialize(text_file)
    @input = text_file
    @grid = []
  end

  def set_up_grid
    rows = @input.split('/n')
    rows.map do |row|
      numbers = row.split("")
      numbers.each do |n|
        n.to_i
      end
    end
  end

  def insert_spots
    @grid = set_up_grid
    grid.each_with_index do |row, row_index|
      row.each_with_index do |num, column_index|
        if num == 0
          coordinates = {row:row_index, column: column_index}
          row[column_index] = Spot.new(coordinates)
        end
      end
    end
    grid
  end

end
