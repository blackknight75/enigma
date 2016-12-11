require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require "pry"

class OffsetTest < Minitest::Test

  def test_it_finds_date_offset
    offset = Offset.new(121016)
    assert_equal [2, 2, 5, 6], Offset.new(121016).date_offsets
# binding.pry
  end

  # def test_date_key
  # assert_equal

end
