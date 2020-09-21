message = File.open(ARGV[0], "r")

incoming_text = message.read

message.close

capitalized_text = incoming_text.upcase

writer = File.open(ARGV[1], "w")

writer.write(capitalized_text)

writer.close
