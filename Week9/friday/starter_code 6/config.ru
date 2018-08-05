require 'sinatra'
require 'sinatra/reloader' if development?
# require_relative './app/models/punk.rb'
require_relative './lib/PunkAPI.rb'
require_relative './app/controllers/static_controller.rb'
require_relative './app/controllers/punk_controller.rb'

use Rack::Reloader

use Rack::MethodOverride

run Rack::Cascade.new([
  StaticController,
  PunkController
])
