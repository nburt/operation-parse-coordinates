require './lib/coordinate_parser'

describe CoordinateParser do

  map = <<-MAP
  ╔══════════╗
  ║X*********║
  ║**********║
  ║**********║
  ║**********║
  ║**********║
  ╚══════════╝
  MAP

  map2 = <<-MAP2
  ╔══════════╗
  ║**********║
  ║**********║
  ║***X******║
  ║**********║
  ║**********║
  ╚══════════╝
  MAP2

  it 'can parse maps and return an array of their coordinates' do
    coordinate_parser = CoordinateParser.new(map)
    expect(coordinate_parser.location).to eq [0, 0]
  end

  it 'can parse maps with different coordinates' do
    coordinate_parser = CoordinateParser.new(map2)
    expect(coordinate_parser.location).to eq [3, -2]
  end

end