require './test/test_helper'

class ShiftTest < Minitest::Test
  def test_it_has_attributes
    shift = Shift.new(170920, 57132)
    assert_instance_of Shift, shift
    assert_equal 170920, shift.date
    assert_equal 57132, shift.offset
  end
end
