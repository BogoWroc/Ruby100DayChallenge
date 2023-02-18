# frozen_string_literal: true

require_relative '../../lib/#008/split_strings'
require 'test/unit'
class TestSplitStrings < Test::Unit::TestCase
  def test_split_strings
    assert_equal(solution(''), [])
    assert_equal(solution('abcdef'), %w[ab cd ef])
    assert_equal(solution('abcdefg'), %w[ab cd ef g_])
  end
end
