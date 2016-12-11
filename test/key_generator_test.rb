require './test/test_helper'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test

    def test_can_create_generator
      keygen = KeyGenerator.new
      assert_instance_of KeyGenerator, keygen
    end

end
