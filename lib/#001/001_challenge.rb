# frozen_string_literal: true

def substrings(word, dictionary)
  input = word.downcase

  data = Hash.new(0)
  dictionary.each do |e|
    data[e] = count_em(input, e) if input.include?(e)
  end

  data
end

def count_em(str, substr)
  str.scan(/(?=#{substr})/).count
end
