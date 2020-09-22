require './lib/enigma'
require './lib/decrypting'
require './lib/shiftable'

message = File.open(ARGV[0], "r")

incoming_text = message.read.downcase

message.close

enigma = Enigma.new

decrypted_text = enigma.decrypt(incoming_text, ARGV[2], ARGV[3])

writer = File.open(ARGV[1], "w")

writer.write(decrypted_text[:decryption])

writer.close

puts "Created #{ARGV[1]} with the key #{enigma.decryption_info[:key]} and date #{enigma.decryption_info[:date]}"
