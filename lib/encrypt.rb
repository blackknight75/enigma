require "./lib/encrypter"
require "./lib/offset"
require "./lib/key_generator"
require "./lib/rotors"
require 'pry'
read_from = ARGV[0]
write_to = ARGV[1]

encrypter = Encrypter.new

key = encrypter.offset.key
date = encrypter.offset.date

  input = File.read(read_from)

  encrypted_text =  encrypter.encrypt(input)

  output = File.open(write_to, "w")
  output.write(encrypted_text)
  output.close

puts "Created #{write_to} with the key #{key} and date #{date}"
