require './lib/shiftable'
require './lib/encrypting'
require './lib/decrypting'
require 'date'

class Enigma
  attr_reader :encryption_info, :decryption_info
  def initialize
    @encrypting = Encrypting.new
    @decrypting = Decrypting.new
    @encryption_info = Hash.new
    @decryption_info = Hash.new

  end

  def encrypt(message,
              code = rand(99999).to_s,
              date = Date.today.strftime("%d%m%y"))
    @encrypting.rotate_letters(message, code, date)
    @encryption_info[:encryption] = @encrypting.rotate_letters(message, code, date)
    @encryption_info[:key] = code
    @encryption_info[:date] = date
    @encryption_info
  end

  def decrypt(message, code, date)
    @decryption_info[:message] = message
    @decryption_info[:date] = date
    @decryption_info[:code] = code
    @decryption_info
    @decrypting.rotate_letters(message, code, date)
  end
end
