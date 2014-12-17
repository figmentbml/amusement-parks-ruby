require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml')
parks = YAML.load(raw_data)

#not code organization, don't need methods and classes

result = {}
parks.each do |park|
  result[park[:id]] = [park]
end

pp result
