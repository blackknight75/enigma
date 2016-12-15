require './test/test_helper'
require './lib/offset'
require './lib/enigma'
require './lib/encrypter'
require './lib/rotors'
require './lib/key_generator'

class EnigmaTest < Minitest::Test
#
#   def test_instance_of_enigma
#     enigma = Enigma.new
#     assert_instance_of Enigma, enigma
#   end
#
#   def test_can_send_message_to_enigma
#     enigma = Enigma.new
#     enigma.read_message("help")
#     assert_equal "help", enigma.my_message
#   end
#
#   def test_can_split_message
#     enigma = Enigma.new
#     assert_equal ["h", "e", "l", "p"], enigma.split_message("help")
#   end
#
#   def test_can_send_date_to_encrypter
#     enigma = Enigma.new
#     assert_equal 121016, enigma.encrypt(121016)
#   end
end
