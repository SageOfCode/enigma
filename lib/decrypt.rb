require './lib/enigma'
require './lib/decrypting'
require './lib/shiftable'

message = File.open(ARGV[0], "r")

incoming_text = message.read.downcase

message.close

enigma = Enigma.new

encrypted_text = enigma.decrypt(incoming_text, ARGV[2], ARGV[3])

writer = File.open(ARGV[1], "w")

writer.write(encrypted_text)

writer.close

puts "Created #{ARGV[1]} with the key #{enigma.decryption_info[:code]} and date #{enigma.decryption_info[:date]}"
