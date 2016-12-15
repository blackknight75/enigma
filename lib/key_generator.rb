require 'pry'
class KeyGenerator
  attr_reader :key

  def initialize
    @key = 5.times.map{rand(9)}.join
  end
end

# def generate_key
#   99999.times do |i|
#     if @key[0] == 0
#       p @key.sub(0, 1)
#     else
#       @key
#     end
#   end
# end
