require 'json'
require 'httparty'

# This walkthrough gives and example of iterating

class ParseJson

  attr_accessor :json_file
  # Initialise the read and parsing of the JSON file
  # When providing an argument to an initialise method means you must give class initialisation with the argument
  def initialize
    @json_file = JSON.parse(HTTParty.get('http://data.fixer.io/api/latest?access_key=8673ff340f8c9309e05687dc6d5454f9').body)
  end

end

# x = ParseJson.new
# puts x.json_file.class
