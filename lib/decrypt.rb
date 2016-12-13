require "./lib/decrypter"
require "./lib/offset"
require "./lib/key_generator"
require "./lib/rotors"
require 'pry'
read_from = ARGV[0]
write_to = ARGV[1]
message_key = ARGV[2]
message_date = ARGV[3]

decrypter = Decrypter.new


  input = File.read(read_from)

  decrypted_text =  decrypter.decrypt(input, message_key, message_date)

  key = decrypter.offset.key
  date = decrypter.offset.date
  output = File.open(write_to, "w")
  output.write(decrypted_text)
  output.close

puts "Created #{write_to} with the key #{key} and date #{date}"
