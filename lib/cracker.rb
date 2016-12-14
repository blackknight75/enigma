class Cracker
  attr_reader :offset, :position, :rotors, :encrypted_result

  def initialize(date = Time.now.strftime("%D").delete("/").to_i)
    @offset = Offset.new(date)
    @rotors = Rotors.new
    @decrypter = Decrypter.new
    @position = nil
    @cracked_result = []
  end

  def crack(input, message_date)
    until @decrypter.decrypted_result.join[-7..-1] == "..end.."
      @rotors.rotor_wheel.count.times.collect do |attempt|
          @decrypter.decrypt(input, key = KeyGenerator.new.key, message_date)

      end


      @decrypter.decrypt(ARGV[0], genereated_key, date)
    end
end


#
# def rotor_calculation(item, index)
#   active_rotor = @rotors.rotor_wheel
#   starting_poistion = @rotors.rotor_wheel.key(item)
#   clicks = @offset.date_offset[index]
#   binding.pry
#   position_calculator(starting_poistion, clicks, index)
# end
#
# def position_calculator(starting_poistion, clicks, index)
#
#   if starting_poistion < clicks
#     @position = 83 - (clicks - starting_poistion)
#   else
#     @position = (starting_poistion - clicks)
#   end
# end
#
# def activate_offsets(message_date)
#   @offset.date = (message_date.to_i)
#   @offset.date_offsets
#   @offset.key_array
#   @offset.key_join
# end
