require_relative '../lib/board'
require 'minitest/autorun'
require 'minitest/pride'

class BoardTest < Minitest::Test

  def test_it_sets_up_board
    input = "123456789\n123456789"
    board = Board.new(input)
    assert_equal [[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9]], board.set_up_grid
  end

  def test_it_makes_a_row
    skip
  end

  def test_it_makes_a_column
    skip
  end

  def test_it_makes_a_square
    skip
  end

  def test_it_finds_a_square
    skip
  end

  def test_it_selects_columns_for_a_square
    skip
  end

  def test_it_fills_empty_spaces_with_spot_objects
    skip
  end

end
