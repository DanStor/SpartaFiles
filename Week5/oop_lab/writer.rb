class Writer
  def write
    puts "Area: #{calculate_area.round(2)} Perimeter: #{calculate_perimeter.round(2)}"
    puts "Area: #{scaled_area.round(2)} Perimeter: #{scaled_perimeter.round(2)}"
  end
end
