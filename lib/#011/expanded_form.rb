# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength
def to_arr(base, number)
  data = []
  x = number.to_s.length
  while x.positive?
    base_as_int = base.to_i
    v = number / base_as_int
    data << v * base_as_int
    number -= v * base_as_int
    base.chop!
    x -= 1
  end
  data
end
# rubocop:enable Metrics/MethodLength

def to_base(number)
  "1#{'0' * (number.to_s.length - 1)}"
end

def expanded_form(number)
  base = to_base(number)
  data = to_arr(base, number)
  data.reject(&:zero?).join(' + ')
end

def expanded_form_solution(num)
  num
    .to_s
    .reverse
    .chars
    .map.with_index { |i, idx| i == '0' ? nil : i + '0' * idx }
    .compact
    .reverse
    .join(' + ')
end
