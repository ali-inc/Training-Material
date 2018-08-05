require 'httparty'
require 'json'

class PunkAPI

  attr_accessor :single_beer, :all_beers

  include HTTParty

  base_uri 'https://api.punkapi.com/v2'

  def get_single_beer(id)
    @single_beer = self.class.get("/beers/#{id}")
    # JSON.parse(self.class.get("/beers/#{id}").body)
  end

  def get_all_beers
    @all_beers = self.class.get('/beers')
    # JSON.parse(self.class.post('/beers').body)
  end

  # def initialize
  #
  #   @punk_api = HTTParty.get('https://api.punkapi.com/v2/beers/1')
  #
  #   @punk_parse = JSON.parse(@punk_api.body)
  #
  # end

end
