class Enigma
  attr_reader :my_message

  def encrypt(message)
    encrypted = Encrypter.new.encrypt(message)
    encrypted
  end

  def decrypt(message, key, date)
    decrypted = Decrypter.new.decrypt(message, key, date)
    decrypted
  end

  def crack(message, date)
    cracked = Cracker.new.crack(message, date)
    cracked
  end
end
