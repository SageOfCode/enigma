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
end
