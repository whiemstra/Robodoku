require "minitest"
require "minitest/autorun"
require "minitest/pride"

require_relative '../lib/row'

class Rowtest < Minitest::Test

  def test_row_has_nine_elements
    row = Row.new
    input = '123456789'
    row.set_up_rows(input)
    assert_equal 9, row.data.length
    assert_equal [1,2,3,4,5,6,7,8,9], row.data
  end

  def test_row_fills_an_empty_spot_with_zero
    row = Row.new
    input  = '123 56789'
    row.set_up_rows(input)
    assert_equal 9, row.data.length
    assert_equal [1,2,3,0,5,6,7,8,9], row.data
  end

  def test_a_row_has_a_collection_of_possibilities
    row = Row.new
    assert_equal [1,2,3,4,5,6,7,8,9], row.possibilities
  end

  def test_possibilities_reduce_nums_already_in_row
    row = Row.new
    input = [1,2,3,4,0,6,7,8,9]
    row.solve(input)
    assert_equal [5], row.possibilities
  end

  def test_empty_spot_gets_filled_with_missing_number
    row = Row.new
    input = [1,2,3,0,5,6,7,8,9]
    answer = row.solve(input)
    assert_equal [1,2,3,4,5,6,7,8,9], answer
  end

  def test_multiple_empty_spots_in_a_row_get_filled_with_missing_numbers
    skip
  end
end
