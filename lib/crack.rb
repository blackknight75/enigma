require "./lib/cracker"
require "./lib/offset"
require "./lib/key_generator"
require "./lib/rotors"
require './lib/decrypter'
require 'pry'
read_from = ARGV[0]
write_to = ARGV[1]
message_date = ARGV[2]

cracker = Cracker.new


  input = File.read(read_from)

  cracked_text =  cracker.crack(input, message_date)

  key = cracker.offset.key
  date = cracker.offset.date
  output = File.open(write_to, "w")
  output.write(cracked_text)
  output.close

puts "Created #{write_to} with the key #{key} and date #{date}"
