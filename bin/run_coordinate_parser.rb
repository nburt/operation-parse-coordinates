require_relative '../lib/coordinate_parser'

Dir.glob("/Users/nathanaelburt/gSchoolWork/operation-parse-coordinates/data/*.txt") do |file|
  parsed_file = File.read(file)
  coordinate_parser = CoordinateParser.new(parsed_file)
  p coordinate_parser.location
end