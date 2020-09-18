require './test/test_helper'

class ShiftTest < Minitest::Test
  def test_it_has_attributes
    shift = Shift.new(170920, 57132)
    assert_instance_of Shift, shift
    assert_equal 170920, shift.date
    assert_equal 57132, shift.offset
  end

  def test_it_can_find_the_keys
    shift = Shift.new(170920, 57132)
    assert_equal ["57", "71", "13", "32"], shift.find_keys("57132")
  end
end
