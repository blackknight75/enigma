require './test/test_helper'
require './lib/rotors'

class RotorsTest < Minitest::Test

  def test_rotors_exist
    rotors  = Rotors.new
    assert_instance_of Rotors, rotors
  end

  def test_rotors_can_move_rotor_one
    rotors = Rotors.new
    assert_equal 0, rotors.rotor_one
  end

  def test_rotors_can_move_rotor_two
    rotors = Rotors.new
    assert_equal 0, rotors.rotor_one
  end

  def test_rotors_can_move_rotor_three
    rotors = Rotors.new
    assert_equal 0, rotors.rotor_one
  end

  def test_rotors_can_move_rotor_four
    rotors = Rotors.new
    assert_equal 0, rotors.rotor_one
  end

end
