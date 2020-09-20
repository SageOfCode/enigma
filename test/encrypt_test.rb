require './test/test_helper'

class EncryptTest < Minitest::Test
  def test_it_exists
    encrypt = Encrypt.new
    assert_instance_of Encrypt, encrypt
  end

  def test_it_knows_the_alphabet
    encrypt = Encrypt.new
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w",
"x", "y", "z", " "]
    assert_equal expected, encrypt.alphabet
  end

  def test_it_break_up_messages
    encrypt = Encrypt.new
    message = "Sage Mango"
    expected = [["S", "a", "g", "e"], [" ", "M", "a", "n"], ["g", "o"]]
    assert_equal expected, encrypt.break_up(message)
  end

  def test_it_can_rotate_letters
    encrypt = Encrypt.new
    shift = {"A" => 6, "B" => 70, "C" => 6, "D" => 5}
    expected = "yqmjfbgs"
    message = [["s", "a", "g", "e"], [" ", "m", "a", "n"]]
    assert_equal expected, encrypt.rotate_letters(message, shift)
  end
end
