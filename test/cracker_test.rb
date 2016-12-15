require './test/test_helper'
require './lib/cracker'
require './lib/decrypter'
require './lib/offset'
require './lib/rotors'


class CrackerTest < Minitest::Test

  def test_can_initialize_decryptor
    cracker = Cracker.new
    assert_instance_of Offset, cracker.offset
  end

  def test_cracker_can_output_shit
    cracker = Cracker.new
    input = File.read("./fixtures/first_message.txt")
    assert_equal "3883", cracker.crack(input, 121416)
  end
end
