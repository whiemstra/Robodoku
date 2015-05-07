require 'pry'

class Solver

  def initialize(puzzle)
    # @puzzle = puzzle.map { |row| row.chomp.ljust(9, " ") }
    @board = Board.new(puzzle)
  end


end


#
# def solved?
#   !unsolved?
#   rows.all? { |row| row.value != 0}
# end
#
# def unsolved?
#   value == ''
# end
#
#
# cells = puzzle.join.chars.map {|char| Cell.new(char)}
# rows = cells.each_slice(9).to_a
