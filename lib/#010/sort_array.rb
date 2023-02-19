# frozen_string_literal: true

def sort_array(source_array)
  sorted_odds = source_array.select(&:odd?).sort
  source_array.map { |e| e.even? ? e : sorted_odds.shift }
end
