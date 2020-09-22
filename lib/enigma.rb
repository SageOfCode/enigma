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
              key = rand(99999).to_s,
              date = Date.today.strftime("%d%m%y"))
    @encrypting.rotate_letters(message, key, date)
    @encryption_info[:encryption] = @encrypting.rotate_letters(message, key, date)
    @encryption_info[:key] = key
    @encryption_info[:date] = date
    @encryption_info
  end

  def decrypt(message, key, date)
    @decrypting.rotate_letters(message, key, date)
    @decryption_info[:decryption] = @decrypting.rotate_letters(message, key, date)
    @decryption_info[:key] = key
    @decryption_info[:date] = date
    @decryption_info
  end
end
