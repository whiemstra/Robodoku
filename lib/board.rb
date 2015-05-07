require_relative 'spot'
require_relative 'row'
require_relative 'column'
require_relative 'square'
require 'pry'

class Board
  attr_reader :spots, :rows, :columns, :squares

  def initialize(board_values)
    # @spots = board_values.map { |value| Spot.new(value.to_i) }
    @spots = board_values.chars.map { |value| Spot.new(value.to_i) }
    @rows = spots.each_slice(9).map { |rows| Row.new(rows) }
    @columns = spots.each_slice(9).to_a
                 .transpose.map { |column| Column.new(column) }
    @squares = spots.each_slice(9).each_slice(3).flat_map { |x| x.transpose.flatten }.each_slice(9).map { |square| Square.new(square) }
  end

  def check_all_possibilities
    self.rows.each { |row| row.check_row }
    self.columns.each { |column| column.check_column }
    self.squares.each { |square| square.check_square }
  end

  def puzzle_solved!
    spots.all?(&:solved?)
  end
end
