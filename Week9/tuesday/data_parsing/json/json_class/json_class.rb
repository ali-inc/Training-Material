require_relative 'json_class_parse'
require 'json'

rates = ParseJson.new('json_exchange_rates.json')

p rates.json_parse["base"]
