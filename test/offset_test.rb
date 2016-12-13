require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require './lib/key_generator'
require "pry"

class OffsetTest < Minitest::Test

  def test_it_finds_date_offset
    offset = Offset.new(121016)
    assert_equal [2, 2, 5, 6], Offset.new(121016).date_offsets
# binding.pry
  end

  def test_it_runs_keygen_and_is_random
    offset = Offset.new(121016)
    assert_equal 5, offset.key.length
    refute_equal 94827, offset.key.to_i
    refute_equal 12345, offset.key.to_i
    refute_equal 98765, offset.key.to_i
  end

  def test_can_join_key_and_offset
    offset = Offset.new(121016, "45771")
    offset.date_offsets
    offset.key_array
    assert_equal [47, 59, 82, 77], offset.key_join
  end


end
