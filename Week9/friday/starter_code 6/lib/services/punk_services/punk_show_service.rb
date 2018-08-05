require "httparty"
require "json"

class PunkShowService

  include HTTParty

  attr_accessor :beers

  def initialize
    @beers = JSON.parse(HTTParty.get('https://api.punkapi.com/v2/beers').body)
  end


  def get_show_beer(id)
    @beer = JSON.parse(HTTParty.get("https://api.punkapi.com/v2/beers/#{id}").body)
  end

end
