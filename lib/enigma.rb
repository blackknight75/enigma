class Enigma
  attr_reader :my_message

  def initialize
    @offset = Offset.new
    @encrypter = Encrypter.new
    @my_message = ""
  end

  def read_message(message)
    @my_message = message
    split_message(message)
  end

  def split_message(message)
    message.chars
  end
end
