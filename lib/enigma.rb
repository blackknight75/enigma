class Enigma
  attr_reader :my_message

  def initialize
    @my_message = ""
  end

  def encrypt(message = "", key = nil, date)
    encrypter = Encrypter.new(date)
    read_message(message)
    encrypter.offset.date
  end

  # def read_message(message)
  #   @my_message = message
  #   split_message(message)
  # end
  #
  # def split_message(message)
  #   message.chars
  # end
end
