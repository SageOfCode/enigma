require './lib/shiftable'
require './lib/encrypting'

class Enigma
  def initialize
    @encryting = Encrypting.new
  end

  def encrypt(message, code, date)
    @encrypting.rotate_letters(message, code, date)
  end


end
