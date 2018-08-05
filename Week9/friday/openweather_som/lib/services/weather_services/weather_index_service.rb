require "httparty"
require "json"

class WeatherIndexService

  include HTTParty

  attr_accessor :cities

  def initialize
    @cities = JSON.parse(HTTParty.get('http://api.openweathermap.org/data/2.5/group?APPID=ecb9f25d85ac7274d45c2999e26b94e2&id=2655603,2643743,2643123,3333187,2633351,2650225,2653822,6455259,6356055,5128638,3173435,524901&units=metric').body)
  end

end
