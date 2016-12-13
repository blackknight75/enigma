require "./lib/decrypter"
require "./lib/offset"
require "./lib/key_generator"
require "./lib/rotors"
require 'pry'
read_from = ARGV[0]
write_to = ARGV[1]

decrypter = Decrypter.new

key = decrypter.offset.key
date = decrypter.offset.date

  input = File.read(read_from)

  decrypted_text =  decrypter.decrypt(input)

  output = File.open(write_to, "w")
  output.write(decrypted_text)
  output.close

puts "Created #{write_to} with the key #{key} and date #{date}"
