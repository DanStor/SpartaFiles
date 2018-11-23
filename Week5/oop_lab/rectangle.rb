require_relative "writer.rb"

class Rectangle < Writer
  attr_accessor :side_length_x, :side_length_y, :scale_factor

  def initialize side_length_x, side_length_y=side_length_x, scale_factor = 1
    @side_length_x = side_length_x
    @side_length_y = side_length_y
    @scale_factor = scale_factor
    self.write
  end

  def calculate_area
    @side_length_x * @side_length_y
  end

  def calculate_perimeter
    (@side_length_x * 2) + (@side_length_y * 2)
  end

  def scaled_area
    (@side_length_x * @scale_factor) * (@side_length_y * @scale_factor)
  end

  def scaled_perimeter
    ((@side_length_x * @scale_factor) * 2) + ((@side_length_y * @scale_factor) * 2)
  end
end
