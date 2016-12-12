class Encrypter
  attr_reader :rotor_one, :rotor_two, :rotor_three, :rotor_four

  def initialize
    @offset = Offset.new
    @rotors = Rotors.new
    @rotor_one = @rotors.rotor_one
    @rotor_two = @rotors.rotor_two
    @rotor_three = @rotors.rotor_three
    @rotor_four = @rotors.rotor_four
  end

  def move_rotor_one

  end

  def move_rotor_two
  end

  def move_rotor_three
  end

  def move_rotor_four
  end
end
