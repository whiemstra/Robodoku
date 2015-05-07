require 'minitest/pride'
require 'minitest/autorun'
require './lib/spot'

class SpotTest < Minitest::Test

  def test_it_has_a_value
    spot = Spot.new(2)
    assert_equal 2, spot.value
  end

  def test_it_has_possibilities
    spot = Spot.new(2)
    assert_equal [1,2,3,4,5,6,7,8,9], spot.possibilities
    assert_equal 9, spot.possibilities.size
  end

  def test_blank_spot_is_filled_with_a_zero
    spot = Spot.new(' ')
    assert_equal 0, spot.value
  end

  def test_it_removes_a_possibility
    spot = Spot.new(2)
    spot.reduce_possibilities(9)
    assert_equal 8, spot.possibilities.size
    spot.reduce_possibilities(2)
    assert_equal 7, spot.possibilities.size
  end

  def test_it_can_tell_whether_a_value_has_been_decided
    empty_spot = Spot.new(0)
    solved_spot = Spot.new(3)
    refute empty_spot.solved?
    assert solved_spot.solved?
  end
end
