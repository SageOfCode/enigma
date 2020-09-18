require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def test_it_has_attributes
    enigma = Enigma.new(170920, 57132, "Sage")
    assert_instance_of Enigma, enigma
    assert_equal 170920, enigma.date
    assert_equal 57132, enigma.offset
    assert_equal "Sage", enigma.message
  end
end
