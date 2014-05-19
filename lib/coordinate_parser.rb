class CoordinateParser

  def initialize(map)
    @map = map
  end

  def location
    map_lines = @map.split("\n")
    map_lines.delete_at(0)
    y_axis_counter = 0
    coordinates_array = []

    map_lines.each do |line|
      x_axis_counter = 0
      line.strip.chars.each do |point|
        if point == "X"
          coordinates_array << x_axis_counter - 1
          coordinates_array << y_axis_counter
        end
        x_axis_counter += 1
      end
      y_axis_counter -= 1
    end
    coordinates_array
  end

end