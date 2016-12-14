class Cracker

  def crack(input, message_date)
    99999.times do |attempt|
      keygen = attempt.to_s.rjust(5, "0")
      cracked =  Decrypter.new.decrypt(input, keygen, message_date)
      return i && cracked if cracked[-7..-1] == "..end.."
    end
  end
end
