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
end
