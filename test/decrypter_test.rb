require './test/test_helper'
require './lib/decrypter'
require './lib/offset'
require './lib/rotors'

class DecrypterTest < Minitest::Test

  def test_if_decrypter_exists
    decrypter = Decrypter.new
    assert_instance_of Decrypter, decrypter
  end

  def test_rotors_exist
    decrypter = Decrypter.new
    assert_instance_of Rotors, decrypter.rotors
  end

  def test_offset_exists
    decrypter = Decrypter.new
    assert_instance_of Offset, decrypter.offset
  end

  def test_position_calculator_returns_position
    decrypter = Decrypter.new
    decrypter.activate_offsets("00117", 101216)
    decrypter.rotor_calculation("h", 0)
    assert_equal 82, decrypter.position
  end

  def test_can_decrypt_one_letter
    decrypter = Decrypter.new
    decrypter.decrypt("s", "12002", 101216)
    assert_equal "/", decrypter.decrypted_result.join
  end
end
