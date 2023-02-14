# frozen_string_literal: true

require_relative '../../lib/#001/001_challenge'
require 'test/unit'

class Test001Challenge < Test::Unit::TestCase
  DICTIONARY = %w[below down go going horn how howdy it i low own part partner sit].freeze

  def test_should_count_word_match_in_the_single_word
    assert_true(hash_equal?({ 'below' => 1, 'low' => 1 }, substrings('below', DICTIONARY)))
  end

  def test_should_count_word_match_in_the_sentence
    expected = { 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1, 'it' => 2, 'i' => 3, 'own' => 1,
                 'part' => 1, 'partner' => 1, 'sit' => 1 }
    assert_true(hash_equal?(expected, substrings("Howdy partner, sit down! How's it going?", DICTIONARY)))
  end
end

def hash_equal?(expected, actual)
  array1 = expected.to_a
  array2 = actual.to_a
  (array1 - array2 | array2 - array1) == []
end
