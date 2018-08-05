require "httparty"
require "json"
require "date"

class WeatherController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do

    @cities = OpenWeatherAPI.new.weather_index_service.cities

    erb :'weather/index'

  end

  get '/:id' do

    id = params[:id].to_i

    @api = OpenWeatherAPI.new
    @city = @api.weather_show_service.get_city(id)

    erb :'weather/show'

  end

end
