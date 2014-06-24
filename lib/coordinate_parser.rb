class CoordinateParser

  def initialize(map)
    @map = map
  end

  def parse
    rows = format_map
    coordinates = []
    y_coordinate = 0
    rows.each do |row|
      x_coordinate = 0
      row.chars.each do |x|
        if x == "X"
          coordinates = [x_coordinate, y_coordinate]
        end
        x_coordinate += 1
      end
      y_coordinate -= 1
    end
    coordinates
  end

  private

  def format_map
    rows = @map.split("\n")
    rows.shift
    rows.pop
    rows.map do |row|
      row.strip.slice(1..-2)
    end
  end

end