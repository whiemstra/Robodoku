require_relative 'board'
require 'pry'

class Solver
  attr_reader :board

  def initialize(board_values)
    @board = Board.new(board_values)
  end

  def solve
    until board.puzzle_solved!
      board.check_all_possibilities
    end
    one_big_row = board.spots.map{|spot| spot.value}
    one_big_row.each_slice(9){|slice| puts slice.join}
  end

end

# def solved?
#   !unsolved?
#   rows.all? { |row| row.value != 0}
# end
#
# def unsolved?
#   value == ''
# end
