require "httparty"
require "json"

class WeatherShowService

  include HTTParty

  def get_city(id)
    @city = JSON.parse(HTTParty.get("http://api.openweathermap.org/data/2.5/weather?APPID=ecb9f25d85ac7274d45c2999e26b94e2&id=#{id}&units=metric").body)
  end

  def get_forecast(id)
    @forecast = JSON.parse(HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?APPID=ecb9f25d85ac7274d45c2999e26b94e2&id=#{id}&units=metric").body)
  end

end
