class Encrypter
  attr_reader :offset, :position, :rotors, :encrypted_result

  def initialize(date = Time.now.strftime("%D").delete("/").to_i)
    @offset = Offset.new(date)
    @rotors = Rotors.new
    @position = nil
    @encrypted_result = []
  end

  def encrypt(input)
    input.chomp.chars.each_with_index do |item, index|
      rotor_calculation(item, index)
      @encrypted_result << rotors.rotor_wheel.values_at(@position)
    end
    @encrypted_result.join
  end

  def rotor_calculation(item, index)
    activate_offsets
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
