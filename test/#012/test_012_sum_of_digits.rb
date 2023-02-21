# frozen_string_literal: true

require_relative '../../lib/#012/sum_of_digits'
require 'test/unit'

class TestSumOfDigits < Test::Unit::TestCase
  # rubocop:disable Metrics/AbcSize
  def test_sum_of_digits
    assert_equal(digital_root(16), 7)
    assert_equal(digital_root(942), 6)
    assert_equal(digital_root(132_189), 6)
    assert_equal(digital_root(493_193), 2)
    assert_equal(digital_root(195), 6)
    assert_equal(digital_root(992), 2)
    assert_equal(digital_root(999_999_999_999), 9)
    assert_equal(digital_root(167_346), 9)
    assert_equal(digital_root(10), 1)
    assert_equal(digital_root(0), 0)
  end

  def test_sum_of_digits_the_best
    assert_equal(digital_root_the_best(16), 7)
    assert_equal(digital_root_the_best(942), 6)
    assert_equal(digital_root_the_best(132_189), 6)
    assert_equal(digital_root_the_best(493_193), 2)
    assert_equal(digital_root_the_best(195), 6)
    assert_equal(digital_root_the_best(992), 2)
    assert_equal(digital_root_the_best(999_999_999_999), 9)
    assert_equal(digital_root_the_best(167_346), 9)
    assert_equal(digital_root_the_best(10), 1)
    assert_equal(digital_root_the_best(0), 0)
  end
  # rubocop:enable Metrics/AbcSize
end
