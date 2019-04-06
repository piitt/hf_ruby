#!/usr/bin/env ruby
# encoding: UTF-8
#
require 'minitest/autorun'
class TestArray < Minitest::Test
  def setup
    @array = ['a', 'b', 'c']
  end

  def test_length
    assert_equal(3, @array.length)
  end

  def test_last
    assert_equal('c', @array.last)
  end

  def test_join
    assert_equal('a-b-c', @array.join('-'))
  end
end
