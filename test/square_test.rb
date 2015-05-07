require "minitest"
require "minitest/autorun"
require "minitest/pride"

require_relative '../lib/square'

class SquareTest < Minitest::Test

  def test_square_has_nine_elements
    square = Square.new([Spot.new('1'), Spot.new('2'), Spot.new('3'), Spot.new('4'), Spot.new('5'), Spot.new('6'), Spot.new('7'), Spot.new('8'), Spot.new('9')])
    assert_equal [1,2,3,4,5,6,7,8,9], square.spots.map(&:value)
  end

  def test_square_fills_an_empty_spot_with_zero
    square = Square.new([Spot.new('1'), Spot.new('2'), Spot.new('3'), Spot.new('4'), Spot.new('5'), Spot.new('6'), Spot.new('7'), Spot.new(' '), Spot.new('9')])
    assert_equal [1,2,3,4,5,6,7,0,9], square.spots.map(&:value)
  end

  def test_square_fills_multiple_empty_spots_with_zeros
    square = Square.new([Spot.new(' '), Spot.new('2'), Spot.new('1'), Spot.new(' '), Spot.new(' '), Spot.new('6'), Spot.new(' '), Spot.new('9'), Spot.new(' ')])
    assert_equal [0,2,1,0,0,6,0,9,0], square.spots.map(&:value)
  end

  def test_square_has_a_list_of_possibilities
    square = Square.new([Spot.new('1'), Spot.new('2'), Spot.new('3'), Spot.new('4'), Spot.new('5'), Spot.new('6'), Spot.new('7'), Spot.new(' '), Spot.new('9')])
    assert_equal [1,2,3,4,5,6,7,8,9], square.possibilities
  end

  def test_it_recognizes_unsolved_spots
    square = Square.new([Spot.new(' '), Spot.new('2'), Spot.new('1'), Spot.new(' '), Spot.new(' '), Spot.new('6'), Spot.new(' '), Spot.new('9'), Spot.new(' ')])
    assert_equal [0,0,0,0,0], square.empty_spots.map(&:value)
  end

  def test_empty_spot_gets_filled_with_missing_number
    square = Square.new([Spot.new('1'), Spot.new('2'), Spot.new('3'), Spot.new('4'), Spot.new('5'), Spot.new('6'), Spot.new('7'), Spot.new('0'), Spot.new('9')])
    answer = square.check_square
    assert_equal [1,2,3,4,5,6,7,8,9], answer.map(&:value)
  end

  def test_it_can_assess_itself
    square = Square.new([Spot.new(1), Spot.new(2), Spot.new(3), Spot.new(4), Spot.new(5), Spot.new(6), Spot.new(7), Spot.new(8), Spot.new(0)])
    square.check_square
    assert_equal 9, square.spots.last.value
  end

end
