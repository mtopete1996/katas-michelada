# frozen_string_literal: true

require 'debug'

def cycle(num)
  str = (1.0 / num).to_s.split('.')[1]
  str.chop! if str.length >= 1
  str_chars = str.chars
  dynamic = []

  (str.length / 2).times do |index|
    dynamic = str_chars[0..index]
    comparate = str_chars[((index + 1)..(index + (index + 1)))]
    break if comparate.join == dynamic.join

    dynamic = []
  end

  return -1 if dynamic.empty?

  scan = str.scan(dynamic.join)
  last_bits = str[scan.join.length..str.length]

  return -1 if str.match?(last_bits) && (scan.join.length + last_bits.length) != str.length

  dynamic.length
end
