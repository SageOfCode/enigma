require './test/test_helper'

class EnigmaTest < Minitest::Test
  def test_it_has_attributes
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_can_find_the_shift
    enigma = Enigma.new
    enigma.shift.stubs(:create_keys).returns({"A" => 2, "B" => 27, "C" => 74, "D" => 40})
    enigma.shift.stubs(:create_offset).returns({"A" => 6, "B" => 4, "C" => 0, "D" => 0})
    expected = {"A" => 8, "B" => 31, "C" => 74, "D" => 40}
    assert_equal expected, enigma.find_shift
  end
end
