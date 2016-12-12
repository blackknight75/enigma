class Rotors
  attr_reader :rotor_one, :rotor_two, :rotor_three, :rotor_four

  def initialize
    @loweralpha = ("a".."z").to_a
    @upperalpha = ("A".."Z").to_a
    @numbers = ("0".."9").to_a
    #how to make \ an | into string?
    @special_chars = [" ", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")",
                      "[", "]", ",", ".", "<", ">", ";", ":", "/", "?"]
    @rotor_wheel = @loweralpha + @upperalpha + @numbers + @special_chars
    @rotor_one = @rotor_wheel
    @rotor_two = @rotor_wheel
    @rotor_three = @rotor_wheel
    @rotor_four = @rotor_wheel
  end

  # def rotor_one(input)
  #   input_position = @rotor_wheel.index(input)
  #   (offset_num).times do |num|
  #   end
  # end
  #
  # def rotor_two(input)
  # end
  #
  # def rotor_three(input)
  # end
  #
  # def rotor_four(input)
  # end
end
