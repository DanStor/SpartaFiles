require_relative "writer.rb"

class Square < Writer
  attr_accessor :side_length, :scale_factor

  def initialize side_length, scale_factor = 1
    @side_length = side_length
    @scale_factor = scale_factor
    @write
  end

  def calculate_area
    @side_length ** 2
  end

  def calculate_perimeter
    @side_length * 4
  end

  def scaled_area
    (@side_length * @scale_factor) ** 2
  end

  def scaled_perimeter
    (@side_length * @scale_factor) * 4
  end
end
