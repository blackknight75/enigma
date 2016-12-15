require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require './lib/key_generator'
require "pry"

class OffsetTest < Minitest::Test

  def test_offset_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  def test_can_accept_date
    offset = Offset.new(KeyGenerator.new.key, 121016)
    assert_equal 121016, offset.date
  end

  def test_it_creates_date_offset
    offset = Offset.new
    offset.date = 121016
    offset.date_offsets
    assert_equal [2, 2, 5, 6], offset.date_offset
  end
  #
  def test_it_runs_keygen_and_is_random
    offset = Offset.new(KeyGenerator.new.key, 121016)
    assert_equal 5, offset.key.length
    refute_equal 94827, offset.key.to_i
    refute_equal 12345, offset.key.to_i
    refute_equal 98765, offset.key.to_i
  end

  def test_can_creat_key_array
    offset = Offset.new("45771", 121016)
    offset.date_offsets
    assert_equal [45, 57, 77, 71], offset.create_key_array
  end

  def test_can_join_key_and_offset
    offset = Offset.new("45771", 121016)
    offset.date_offset = [2, 2, 5, 6]
    offset.key_join([45, 57, 77, 71])
    assert_equal [47, 59, 82, 77], offset.key_offset_join
  end
end
