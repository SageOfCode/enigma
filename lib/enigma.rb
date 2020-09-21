require './lib/shiftable'
require './lib/encrypting'

class Enigma
  def initialize
    @encryting = Encrypting.new
    @decrypting = Decrypting.new
  end

  def encrypt(message, code, date)
    @encrypting.rotate_letters(message, code, date)
  end

  def decrypt(message, code, date)
    @decrypting.rotate_letters(message, code, date)
  end
end
