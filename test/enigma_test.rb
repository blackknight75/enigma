require './test/test_helper'
require './lib/offset'
require './lib/enigma'
require './lib/encrypter'
require './lib/rotors'
require './lib/key_generator'
require './lib/decrypter'
require './lib/cracker'

class EnigmaTest < Minitest::Test

  def test_instance_of_enigma
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_encrypted_output
    enigma = Enigma.new
    assert_equal 4, enigma.encrypt("wild").length
  end

  def test_decrypted_output
    enigma = Enigma.new
    assert_equal 4, enigma.decrypt("wild", "28453", 121016).length
  end

  def test_cracked_output
    enigma = Enigma.new
    assert_equal 4, enigma.crack("tile", 121016)
  end

end
