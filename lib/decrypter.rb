class Decrypter
  attr_reader :offset, :position, :rotors, :encrypted_result

  def initialize(date = Time.now.strftime("%D").delete("/").to_i)
    @offset = Offset.new(date)
    @rotors = Rotors.new
    @position = nil
    @decrypted_result = []
  end

  def decrypt(input, message_key, message_date)
    activate_offsets(message_key, message_date)
    input = input.chomp.chars
    send_to_encrypter_engine(input)
    @decrypted_result.join
  end

  def send_to_decrypter_engine(input)
    until input.empty?
      active_input = input.shift(4)
      active_input.each_with_index do |item, index|
        rotor_calculation(item, index)
        @decrypted_result << rotors.rotor_wheel.values_at(@position)
      end
    end
  end

  def rotor_calculation(item, index)
    active_rotor = @rotors.rotor_wheel
    starting_poistion = @rotors.rotor_wheel.key(item)
    clicks = @offset.key_offset_join[index]
    position_calculator(starting_poistion, clicks, index)
  end

  def position_calculator(starting_poistion, clicks, index)
    if starting_poistion < clicks
      @position = 83 - (clicks - starting_poistion)
    else
      @position = (starting_poistion - clicks)
    end
  end

  def activate_offsets(message_key, message_date)
    if message_key != nil
    @offset.key = message_key
    end
    @offset.date = (message_date.to_i)
    @offset.date_offsets
  end
end
