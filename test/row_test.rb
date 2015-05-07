require "minitest"
require "minitest/autorun"
require "minitest/pride"

require_relative '../lib/row'

class RowTest < Minitest::Test

  def test_row_has_nine_elements
    row = Row.new([Spot.new('1'), Spot.new('2'), Spot.new('3'), Spot.new('4'), Spot.new('5'), Spot.new('6'), Spot.new('7'), Spot.new('8'), Spot.new('9')])
    assert_equal [1,2,3,4,5,6,7,8,9], row.spots.map(&:value)
  end

  def test_row_fills_multiple_empty_spots_with_zeros
    row = Row.new([Spot.new(' '), Spot.new('2'), Spot.new('1'), Spot.new(' '), Spot.new(' '), Spot.new('6'), Spot.new(' '), Spot.new('9'), Spot.new(' ')])
    assert_equal [0,2,1,0,0,6,0,9,0], row.spots.map(&:value)
  end

  def test_it_recognizes_unsolved_spots
    row = Row.new([Spot.new(' '), Spot.new('2'), Spot.new('1'), Spot.new(' '), Spot.new(' '), Spot.new('6'), Spot.new(' '), Spot.new('9'), Spot.new(' ')])
    assert_equal [0,0,0,0,0], row.empty_spots.map(&:value)
  end

  def test_empty_spot_gets_filled_with_missing_number
    row = Row.new([Spot.new('1'), Spot.new('2'), Spot.new('3'), Spot.new('4'), Spot.new('5'), Spot.new('6'), Spot.new('7'), Spot.new('0'), Spot.new('9')])
    answer = row.check_row
    assert_equal [1,2,3,4,5,6,7,8,9], answer.map(&:value)
  end

  def test_it_can_assess_itself
    row = Row.new([Spot.new(1), Spot.new(2), Spot.new(3), Spot.new(4), Spot.new(5), Spot.new(6), Spot.new(7), Spot.new(8), Spot.new(0)])
    row.check_row
    assert_equal 9, row.spots.last.value
  end

  def test_multiple_empty_spots_in_a_row_get_filled_with_missing_numbers
    skip  # test for board?? need column solutions....
    row = Row.new
    input = [1,2,3,0,5,6,7,8,0]
    answer = row.solve(input)
    assert_equal [1,2,3,4,5,6,7,8,9], answer
  end
end

