require './lib/coordinate_parser'

describe CoordinateParser do

  it 'should parse a map and return the coordinates of the x' do
    input = <<-INPUT
+==========+
|X*********|
|**********|
|**********|
|**********|
|**********|
+==========+
    INPUT

    coordinate_parser = CoordinateParser.new(input)
    expect(coordinate_parser.parse).to eq [0, 0]
  end

  it 'should be able to parse a map with whitespace' do
    input = <<-INPUT
    +======+
    |******|
    |******|
    |*X****|
    +======+
    INPUT

    coordinate_parser = CoordinateParser.new(input)
    expect(coordinate_parser.parse).to eq [1, -2]
  end

  it 'can parse larger maps' do
    input = <<-INPUT
    +===================================+
    |***********************************|
    |***********************************|
    |***********************************|
    |******X****************************|
    |***********************************|
    |***********************************|
    |***********************************|
    |***********************************|
    +===================================+
    INPUT

    coordinate_parser = CoordinateParser.new(input)
    expect(coordinate_parser.parse).to eq [6, -3]
  end

end