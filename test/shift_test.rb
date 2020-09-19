require './test/test_helper'

class ShiftTest < Minitest::Test
  def test_it_has_attributes
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_knows_the_date
    shift = Shift.new
    assert_equal (180920), shift.date_of_today
  end

  def test_it_knows_keys
    shift = Shift.new
    shift.stubs(:generate_number).returns("2740")
    assert_equal ["02", "27", "74", "40"], shift.create_keys
  end
end
