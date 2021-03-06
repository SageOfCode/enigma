require './lib/enigma'
require './lib/encrypting'
require './lib/shiftable'

message = File.open(ARGV[0], "r")

incoming_text = message.read.downcase

message.close

enigma = Enigma.new

encrypted_text = enigma.encrypt(incoming_text)

writer = File.open(ARGV[1], "w")

writer.write(encrypted_text[:encryption])

writer.close

puts "Created #{ARGV[1]} with the key #{enigma.encryption_info[:key]} and date #{enigma.encryption_info[:date]}"
