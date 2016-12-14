require './test/test_helper'
require './lib/key_generator'
require './lib/encrypter'
require './lib/rotors'
require './lib/offset'

class EncrypterTest < Minitest::Test
   def test_encrypter_exists
     encrypter = Encrypter.new
     assert_instance_of Encrypter, encrypter
   end

   def test_rotor_wheel_holds_characters
     encrypter = Encrypter.new
     assert_equal 83, encrypter.rotors.rotor_wheel.length
   end

   def test_can_send_input_to_encrypt
     encrypter = Encrypter.new
     assert encrypter.encrypt("help")
   end

   def test_rotor_calculation
     skip
     encrypter = Encrypter.new
     encrypter.rotor_calculation("h", 0)
     encrypter.offset.key = "45771"
     assert_equal 32, encrypter.encrypted_result
   end
end
