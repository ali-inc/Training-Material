require 'json'

json = File.read('json_example.json')

json_parse = JSON.parse(json)

# p json_parse

json_parse['colors'].each do |color|
  p color['code']['hex']
end
