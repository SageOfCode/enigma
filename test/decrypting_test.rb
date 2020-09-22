require './test/test_helper'

class DecryptingTest < Minitest::Test
  def test_it_exists
    decrypt = Decrypting.new
    assert_instance_of Decrypting, decrypt
  end

  def test_it_knows_the_alphabet
    decrypt = Decrypting.new
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w",
"x", "y", "z", " "]
    assert_equal expected, decrypt.alphabet
  end

  def test_it_can_break_up_messages
    decrypt = Decrypting.new
    message = "yqmjfbgsmd"
    expected = [["y", "q", "m", "j"], ["f", "b", "g", "s"], ["m", "d"]]
    assert_equal expected, decrypt.break_up(message)
  end

  def test_it_can_rotate_letters
    decrypt = Decrypting.new
    date = "092020"
    code = "2741"
    expected = "sage mango"
    message = "dlhhlxbqsz"
    assert_equal expected, decrypt.rotate_letters(message, date, code)
  end

  def test_it_can_pass_through_symbols_also
    decrypt = Decrypting.new
    date = "092020"
    code = "2741"
    expected = "!?./"
    message = "!?./"
    assert_equal expected, decrypt.rotate_letters(message, date, code)
  end
end
