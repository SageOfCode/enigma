require './test/test_helper'

class ShiftTest < Minitest::Test
  def test_it_has_attributes
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_it_knows_keys
    shift = Shift.new
    shift.stubs(:generate_number).returns("2740")
    assert_equal ["02", "27", "74", "40"], shift.create_keys
  end

  def test_it_can_create_keys
    shift = Shift.new
    shift.stubs(:create_keys).returns(["02", "27", "74", "40"])
    expected = {"A" => 2, "B" => 27, "C" => 74, "D" => 40}
    assert_equal expected, shift.assign_keys_to_keys
  end

  def test_knows_the_date
    shift = Shift.new
    assert_equal 6, shift.date_of_today.length
  end

  def test_it_knows_the_date_code
    shift = Shift.new
    shift.stubs(:date_of_today).returns(190920)
    expected = ["6400"]
    assert_equal expected, shift.date_code
  end

end
