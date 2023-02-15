# frozen_string_literal: true

require_relative '../../lib/#002/002_challenge'
require 'test/unit'

class Test001Challenge < Test::Unit::TestCase
  # rubocop:disable Metrics/MethodLength
  def test_should_returns_strings_without_digits
    tests = [
      { input: '', want: '' },
      { input: '! !', want: '! !' },
      { input: '(E3at m2e2!!)', want: '(Eat me!!)' },
      { input: 'Dsa32 cdsc34232 csa!!! 1I 4Am cool!', want: 'Dsa cdsc csa!!! I Am cool!' },
      { input: 'A1 A1! AAA   3J4K5L@!!!', want: 'A A! AAA   JKL@!!!' },
      { input: 'My "me3ssy" d8ata issues2! Will1 th4ey ever, e3ver be3 so0lved?',
        want: 'My "messy" data issues! Will they ever, ever be solved?' },
      { input: "Wh7y can't we3 bu1y the goo0d software3? #cheapskates3",
        want: "Why can't we buy the good software? #cheapskates" }
    ]

    tests.each { |tc| assert_equal(tc[:want], string_clean(tc[:input])) }
  end
  # rubocop:enable Metrics/MethodLength
end
