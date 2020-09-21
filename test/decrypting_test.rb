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

#   def test_it_break_up_messages
#     decrypt = Decrypting.new
#     message = "Sage Mango"
#     expected = [["S", "a", "g", "e"], [" ", "M", "a", "n"], ["g", "o"]]
#     assert_equal expected, decrypt.break_up(message)
#   end
#
#   def test_it_can_rotate_letters
#     decrypt = Decrypting.new
#     shift = {"A" => 6, "B" => 70, "C" => 6, "D" => 5}
#     expected = "yqmjfbgs"
#     message = [["s", "a", "g", "e"], [" ", "m", "a", "n"]]
#     assert_equal expected, decrypt.rotate_letters(message, shift)
#
#     expected_2 = "yqmjfbgsmd"
#     message_2 = [["s", "a", "g", "e"], [" ", "m", "a", "n"], ["g", "o"]]
#     assert_equal expected_2, decrypt.rotate_letters(message_2, shift)
#   end
end
