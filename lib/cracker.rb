class Cracker
  attr_reader :offset

  def initialize
    @offset = Offset.new(Time.now.strftime("%D").delete("/").to_i)
    @cracked = ""
  end

  def crack(input, message_date)
      99999.times do |attempt|
        keygen = attempt.to_s.rjust(5, "0")
        @cracked =  Decrypter.new.decrypt(input, keygen, message_date)
        return @cracked if @cracked[-8..-1] == " ..end.."
      end
    @cracked
  end
end
