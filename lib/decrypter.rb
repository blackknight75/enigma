class Decrypter
  attr_reader :offset, :position, :rotors, :encrypted_result

  def initialize(date = Time.now.strftime("%D").delete("/").to_i)
    @offset = Offset.new(date)
    @rotors = Rotors.new
    @position = nil
    # @rotor_wheel = @rotors.rotor_one
    # @rotor_two = @rotors.rotor_two
    # @rotor_three = @rotors.rotor_three
    @decrypted_result = []
  end


  def encrypt(input)
    input_characters = input.chars
    input_characters.pop
    input_characters.each_with_index do |item, index|
      rotor_calculation(item, index)
      @decrypted_result << rotors.rotor_wheel.values_at(@position)
    end
    @decrypted_result.join
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
    @offset.key_array
    @offset.key_join
  end
end
