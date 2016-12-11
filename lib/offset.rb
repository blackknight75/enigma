class Offset

attr_reader :date
  def initialize(date)
    @today = Time.now.strftime("%D").delete("/").to_i
    @date = @today
  end

  def date_offsets
    date_offset = ((@date ** 2) % 10000).to_s.chars.map(&:to_i)
  end

  # def zip

end
