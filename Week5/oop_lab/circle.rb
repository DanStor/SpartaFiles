require_relative "writer.rb"

class Circle < Writer
  attr_accessor :radius, :scale_factor

  def initialize radius, scale_factor = 1
    @radius = radius
    @scale_factor = scale_factor
    self.write
  end

  def calculate_area
    Math::PI * (@radius ** 2)
  end

  def calculate_perimeter
    Math::PI * 2 * @radius
  end

  def scaled_area
    Math::PI * ((@radius * @scale_factor) ** 2)
  end

  def scaled_perimeter
    Math::PI * 2 * (@radius * @scale_factor)
  end
end
