require 'sinatra'
require 'sinatra/reloader' if development?

require_relative './app/controllers/weather_controller.rb'
require_relative './lib/OpenWeatherAPI.rb'


use Rack::Reloader
use Rack::MethodOverride

run Rack::Cascade.new([
  WeatherController
])
