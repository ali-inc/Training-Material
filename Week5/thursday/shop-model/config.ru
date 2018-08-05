require 'sinatra'
require 'sinatra/contrib'
require "sinatra/reloader" if development?
require 'pg'
require_relative "controllers/shop_controller.rb"
require_relative "models/shop.rb"


use Rack::Reloader
use Rack::MethodOverride

run ShopController
