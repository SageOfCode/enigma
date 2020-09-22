require './test/test_helper'

class EncryptingTest < Minitest::Test
  def test_it_exists
    encrypt = Encrypting.new
    assert_instance_of Encrypting, encrypt
  end

  def test_it_knows_the_alphabet
    encrypt = Encrypting.new
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w",
"x", "y", "z", " "]
    assert_equal expected, encrypt.alphabet
  end

  def test_it_break_up_messages
    encrypt = Encrypting.new
    message = "Sage Mango"
    expected = [["S", "a", "g", "e"], [" ", "M", "a", "n"], ["g", "o"]]
    assert_equal expected, encrypt.break_up(message)
  end

  def test_it_can_rotate_letters
    encrypt = Encrypting.new
    date = "092020"
    code = "2741"
    expected = "dlhhlxbqsz"
    message = "sage mango"
    assert_equal expected, encrypt.rotate_letters(message, date, code)
  end

  def test_it_can_pass_through_symbols
    encrypt = Encrypting.new
    date = "092020"
    code = "2741"
    expected = "!?.,"
    message = "!?.,"
    assert_equal expected, encrypt.rotate_letters(message, date, code)
  end

  #--------------ShiftableModuleTest

  def test_it_has_attributes
    shift = Encrypting.new
    assert_instance_of Encrypting, shift
  end

  def test__it_can_generate_a_five_digit_number
    shift = Encrypting.new
    assert_equal 5, shift.generate_number.length
  end

  def test_it_knows_keys
    shift = Encrypting.new
    shift.stubs(:generate_number).returns("2740")
    expected = {"A"=>2, "B"=>27, "C"=>74, "D"=>40}
    assert_equal expected, shift.create_keys('2740')
  end

  def test_knows_the_date
    shift = Encrypting.new
    assert_equal 6, shift.date_of_today.length
  end

  def test_it_knows_the_date_code
    shift = Encrypting.new
    shift.stubs(:date_of_today).returns(190920)
    expected = {"A"=>6, "B"=>4, "C"=>0, "D"=>0}
    assert_equal expected, shift.create_offset("190920")
  end

  def test_it_can_find_the_shift
    shift = Encrypting.new
    shift.stubs(:create_keys).returns({"A" => 2, "B" => 27, "C" => 74, "D" => 40})
    shift.stubs(:create_offset).returns({"A" => 6, "B" => 4, "C" => 0, "D" => 0})
    expected = {"A" => 8, "B" => 31, "C" => 74, "D" => 40}
    assert_equal expected, shift.create_shift("2740", "190920")
  end

  def test_it_can_find_the_shift_with_nil
    shift = Encrypting.new
    shift.stubs(:create_keys).returns({"A" => 2, "B" => 27, "C" => 74, "D" => 40})
    shift.stubs(:create_offset).returns({"A" => 6, "B" => 4, "C" => 0, "D" => 0})
    expected = {"A" => 8, "B" => 31, "C" => 74, "D" => 40}
    assert_equal expected, shift.create_shift(nil, nil)
  end
end
