require "httparty"
require "json"

class PunkIndexService

  include HTTParty

  attr_accessor :beers

  def initialize
    # @beers = JSON.parse(File.read(json_data))
    @beers = JSON.parse(HTTParty.get('https://api.punkapi.com/v2/beers').body)
  end

  def get_all_beers
    @beers
  end


end
