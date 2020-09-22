require './test/test_helper'

class ShiftableTest < Minitest::Test
  def test_it_has_attributes
    shift = Encrypting.new
    assert_instance_of Encrypting, shift
  end

  def test__it_can_generate_a_five_digit_number
    shift = Encrypting.new
    assert_equal 5, shift.generate_number.length
  end

#   def test_it_knows_keys
#     shift = Encrypting.new
#     shift.stubs(:generate_number).returns("2740")
#     assert_equal ["02", "27", "74", "40"], shift.create_keys
#   end
#
#   def test_it_can_create_keys
#     shift = Encrypting.new
#     shift.stubs(:create_keys).returns(["02", "27", "74", "40"])
#     expected = {"A" => 2, "B" => 27, "C" => 74, "D" => 40}
#     assert_equal expected, shift.assign_keys_to_keys
#   end
#
#   def test_knows_the_date
#     shift = Encrypting.new
#     assert_equal 6, shift.date_of_today.length
#   end
#
#   def test_it_knows_the_date_code
#     shift = Encrypting.new
#     shift.stubs(:date_of_today).returns(190920)
#     assert_equal ["6", "4", "0", "0"], shift.date_code
#   end
#
#   def test_it_can_find_the_offset
#     shift = Encrypting.new
#     shift.stubs(:date_code).returns(["6", "4", "0", "0"])
#     expected = {"A" => 6, "B" => 4, "C" => 0, "D" => 0}
#     assert_equal expected, shift.create_offset
#   end
#
#   def test_it_can_find_the_shift
#     shift = Encrypting.new
#     shift.stubs(:create_keys).returns({"A" => 2, "B" => 27, "C" => 74, "D" => 40})
#     shift.stubs(:create_offset).returns({"A" => 6, "B" => 4, "C" => 0, "D" => 0})
#     expected = {"A" => 8, "B" => 31, "C" => 74, "D" => 40}
#     assert_equal expected, shift.find_shift
#   end
#
#   def test_it_can_find_shift_with_date_and_code
#   shift = Encrypting.new
#   expected = {"A"=>26, "B"=>96, "C"=>9, "D"=>92}
#   assert_equal expected, shift.create_shift("190920", "2740")
#   end
end
