class Encrypter
  attr_reader :offset, :position, :rotors, :encrypted_result

  def initialize
    @offset = Offset.new
    @rotors = Rotors.new
    @position = nil
    @encrypted_result = []
  end

  def encrypt(input)
    activate_offsets
    input = input.chomp.chars
    send_to_encrypter_engine(input)
    @encrypted_result.join
  end

  def send_to_encrypter_engine(input)
    until input.empty?
      active_input = input.shift(4)
      active_input.each_with_index do |item, index|
        rotor_calculation(item, index)
        @encrypted_result << rotors.rotor_wheel.values_at(@position)
      end
    end
  end

  def rotor_calculation(item, index)
    active_rotor = @rotors.rotor_wheel
    starting_poistion = @rotors.rotor_wheel.key(item)
    clicks = starting_poistion + @offset.key_offset_join[index]
    @position = position_calculator(clicks)
  end

  def position_calculator(clicks)
    if clicks > 83
      clicks -= 83
      position_calculator(clicks)
    else
      clicks
    end
  end

  def activate_offsets
    @offset.date_offsets
  end
end
