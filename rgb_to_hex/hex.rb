# frozen_string_literal: true

class Hex
  ZEROS = '00'

  def initialize(red, green, blue)
    @rgb = [red, green, blue]
  end

  def from_rgb
    validate_values
    @rgb.map { |color| convert_color(color) }.join.prepend('#')
  end

  def self.from_rgb(red, green, blue)
    new(red, green, blue).from_rgb
  end

  private

  def convert_color(color)
    return ZEROS if color.zero?

    color.to_s(16).upcase
  end

  def validate_values
    @rgb.each_with_index { |color, index| @rgb[index] = 255 if color > 255 }
  end
end
