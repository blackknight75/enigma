require './test/test_helper'
require './lib/encrypter'
require './lib/rotors'
require './lib/offset'

class EncrypterTest < Minitest::Test
   def test_encrypter_exists
     encrypter = Encrypter.new
     assert_instance_of Encrypter, encrypter
   end

   def test_rotor_one_holds_characters
     encrypter = Encrypter.new
     assert_equal 83, encrypter.rotor_one.length
   end

   def test_rotor_two_holds_characters
     encrypter = Encrypter.new
     assert_equal 83, encrypter.rotor_two.length
   end

   def test_rotor_three_holds_characters
     encrypter = Encrypter.new
     assert_equal 83, encrypter.rotor_three.length
   end

   def test_rotor_four_holds_characters
     encrypter = Encrypter.new
     assert_equal 83, encrypter.rotor_four.length
   end
end
