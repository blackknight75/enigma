require './test/test_helper'
require './lib/rotors'

class RotorsTest < Minitest::Test

  def test_rotors_exist
    rotors  = Rotors.new
    assert_instance_of Rotors, rotors
  end

  def test_rotor_one_holds_characters
    rotors = Rotors.new
    assert_equal 83, rotors.rotor_one.length
  end

  def test_rotor_two_holds_characters
    rotors = Rotors.new
    assert_equal 83, rotors.rotor_two.length
  end

  def test_rotor_three_holds_characters
    rotors = Rotors.new
    assert_equal 83, rotors.rotor_three.length
  end

  def test_rotor_four_holds_characters
    rotors = Rotors.new
    assert_equal 83, rotors.rotor_four.length
  end
end
