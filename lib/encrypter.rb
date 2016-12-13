class Encrypter
  attr_reader :rotor_one, :rotor_two, :rotor_three, :rotor_four, :offset

  def initialize(date = Time.now.strftime("%D").delete("/").to_i)
    @offset = Offset.new(date)
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
