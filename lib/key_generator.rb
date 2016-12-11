class KeyGenerator
  attr_reader :key

  def initialize
    @key = 5.times.map{rand(9)}.join
  end
end
