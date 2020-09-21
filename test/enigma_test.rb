require './test/test_helper'

class EnigmaTest < Minitest::Test
  def test_it_has_attributes
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_can_encrypt
    enigma = Enigma.new
    expected =  {
                  encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
                }
    assert_equal expected, enigma.encrypt("hello world", "02715", "040895")
  end
end
