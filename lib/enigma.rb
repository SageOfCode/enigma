require_relative '../lib/shift'
require_relative '../lib/encrypt'

class Enigma
  attr_reader :shift
  def initialize
    @shift = Shift.new
  end

  def find_shift
    # require "pry"; binding.pry
    @shift.find_shift
  end
end
