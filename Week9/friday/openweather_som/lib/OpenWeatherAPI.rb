require_relative "./services/weather_services/weather_show_service"
require_relative "./services/weather_services/weather_index_service"

class OpenWeatherAPI

  def weather_index_service
    WeatherIndexService.new
  end

  def weather_show_service
    WeatherShowService.new
  end

end
