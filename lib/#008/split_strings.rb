# frozen_string_literal: true

def solution(text)
  text = "#{text}_" if text.length.odd? # if string is not frozen you can use: text << '_' if text.length.odd?
  text.scan(/.{2}/)
end
