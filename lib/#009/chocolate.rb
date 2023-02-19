# frozen_string_literal: true

def break_chocolate(n_bar, m_bar)
  return 0 if (n_bar * m_bar).zero? || n_bar * m_bar == 1

  n_bar * m_bar - 1
end
