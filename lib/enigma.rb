require './lib/shiftable'
require './lib/encrypting'
require './lib/decrypting'

class Enigma
  attr_reader :encryption_info
  def initialize
    @encrypting = Encrypting.new
    @decrypting = Decrypting.new
    @encryption_info = Hash.new

  end

  def encrypt(message, code, date)
    @encrypting.rotate_letters(message, code, date)
    @encryption_info[:message] = message
    @encryption_info[:date] = date
    @encryption_info[:code] = code
    @encryption_info
  end

  def decrypt(message, code, date)
    @decrypting.rotate_letters(message, code, date)
  end
end
