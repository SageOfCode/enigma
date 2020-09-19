require './test/test_helper'

class EnigmaTest < Minitest::Test
  def test_it_has_attributes
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end
end
