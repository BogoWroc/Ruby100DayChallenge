# frozen_string_literal: true

require_relative '../../lib/#009/chocolate'
require 'test/unit'
class TestChocolate < Test::Unit::TestCase
  def test_chocolate_breaking
    assert_equal(break_chocolate(5, 5), 24)
    assert_equal(break_chocolate(7, 4), 27)
    assert_equal(break_chocolate(1, 1), 0)
    assert_equal(break_chocolate(0, 0), 0, 'What If I Told You There is No Chocolate?')
    assert_equal(break_chocolate(6, 1), 5)
  end
end
