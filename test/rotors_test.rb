require './test/test_helper'
require './lib/rotors'

class RotorsTest < Minitest::Test

  def test_rotors_exist
    rotors  = Rotors.new
    assert_instance_of Rotors, rotors
  end

  def test_rotor_wheel_holds_characters
    rotors = Rotors.new
    assert_equal 83, rotors.rotor_wheel.length
  end
end
