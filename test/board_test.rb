require_relative '../lib/board'
require_relative '../lib/solver'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BoardTest < Minitest::Test

  def setup
    @board = Board.new(File.read("./puzzles/trivial.txt"))
  end

  def test_it_has_spots
    skip
    assert_equal 81, @board.spots.size
  end

  def test_it_has_rows
    assert_equal 9, @board.rows.size
  end

  def test_it_can_return_the_spots_values
    skip
    assert_equal 0, @board.spots[0].value
    assert_equal 6, @board.spots[40].value
    assert_equal 1, @board.spots[80].value
  end

end
