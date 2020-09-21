require './lib/enigma'
require './lib/decrypting'
require './lib/shiftable'

message = File.open(ARGV[0], "r")

incoming_text = message.read.downcase

message.close

enigma = Enigma.new

encrypted_text = enigma.decrypt(incoming_text, "02715", "040895")

writer = File.open(ARGV[1], "w")

writer.write(encrypted_text)

writer.close
