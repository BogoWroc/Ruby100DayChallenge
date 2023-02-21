# frozen_string_literal: true

def digital_root(number)
  numbers = number.to_s.chars.map(&:to_i)
  result = numbers.reduce(:+)
  result < 10 ? result : digital_root(result)
end

def digital_root_the_best(number)
  number < 10 ? number : digital_root(number.digits.sum)
end
