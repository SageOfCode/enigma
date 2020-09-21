require './lib/shiftable'
require './lib/encrypting'
require './lib/decrypting'

class Enigma
  def initialize
    @encrypting = Encrypting.new
    @decrypting = Decrypting.new
  end

  def encrypt(message, code, date)
    @encrypting.rotate_letters(message, code, date)
  end

  def decrypt(message, code, date)
    @decrypting.rotate_letters(message, code, date)
  end
end
