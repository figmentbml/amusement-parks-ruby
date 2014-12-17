require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml')
parks = YAML.load(raw_data)

result = {}
parks.each do |park|
  contents = "#{park[:city]}, #{park[:country]}"
  result[contents] ||= []
  result[contents] << park
end

pp result
