require "pry"

class Offset

attr_reader :date
  def initialize
=======
attr_reader :date, :keygen
  def initialize(date)
    @today = Time.now.strftime("%D").delete("/").to_i
    @date = date
    @keygen = KeyGenerator.new
    @date_offset = []
    @key_array = []
  end

  def date_offsets
    @date_offset = ((@date ** 2) % 10000).to_s.chars.map(&:to_i)
  end

  def key_array
    @key_array = []
    (@keygen.key.length - 1).times do |index|
      @key_array << ((@keygen.key[index] + @keygen.key[index + 1]).to_i)# + (@date_offset[index])
    end
  end

  def key_join
    result = []
    @key_array.each_with_index do |num, index|
      result << num + @date_offset[index]
    end
    result
  end

end
