require './lib/enigma'

message = File.open(ARGV[0], "r")

incoming_text = message.read

message.close

encrypted_text = Enigma.new(incoming_text)

writer = File.open(ARGV[1], "w")

writer.write(encrypted_text)

writer.close
