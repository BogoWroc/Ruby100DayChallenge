# frozen_string_literal: true

require_relative '../../lib/#011/expanded_form'
require 'test/unit'

class TestExpand < Test::Unit::TestCase
  def test_basic_tests
    assert_equal(expanded_form(2), '2')
    assert_equal(expanded_form(12), '10 + 2')
    assert_equal(expanded_form(42), '40 + 2')
    assert_equal(expanded_form(4_982_342), '4000000 + 900000 + 80000 + 2000 + 300 + 40 + 2')
  end

  def test_basic_tests_the_best_solution
    assert_equal(expanded_form_solution(2), '2')
    assert_equal(expanded_form_solution(12), '10 + 2')
    assert_equal(expanded_form_solution(42), '40 + 2')
    assert_equal(expanded_form_solution(4_982_342), '4000000 + 900000 + 80000 + 2000 + 300 + 40 + 2')
  end

  def test_edge_cases_zeros
    assert_equal(expanded_form(420_370_022), '400000000 + 20000000 + 300000 + 70000 + 20 + 2')
    assert_equal(expanded_form(70_304), '70000 + 300 + 4')
    assert_equal(expanded_form(9_000_000), '9000000')
  end

  # rubocop:disable Metrics/LineLength
  def test_edge_cases_big_numbers
    assert_equal(expanded_form(92_093_403_034_573),
                 '90000000000000 + 2000000000000 + 90000000000 + 3000000000 + 400000000 + 3000000 + 30000 + 4000 + 500 + 70 + 3')
    assert_equal(expanded_form(2_096_039_485_293),
                 '2000000000000 + 90000000000 + 6000000000 + 30000000 + 9000000 + 400000 + 80000 + 5000 + 200 + 90 + 3')
  end
  # rubocop:enable Metrics/LineLength
end
