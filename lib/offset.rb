require "pry"

class Offset
attr_reader :key_offset_join
attr_accessor :key, :date
  def initialize(date, key = KeyGenerator.new.key)
    @today = Time.now.strftime("%D").delete("/").to_i
    @date = date
    @key = key
    @date_offset = []
    @key_array = []
    @key_offset_join = []
  end

  def date_offsets
    @date_offset = ((@date ** 2) % 10000).to_s.chars.map(&:to_i)
  end

  def key_array
    @key_array = []
    (@key.length - 1).times do |index|
      @key_array << ((@key[index] + @key[index + 1]).to_i)# + (@date_offset[index])
    end
  end

  def key_join
    @key_array.each_with_index do |num, index|
      @key_offset_join << num + @date_offset[index]
    end
  end

end
