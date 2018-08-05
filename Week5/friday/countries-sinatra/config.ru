require 'sinatra'
require 'sinatra/contrib'
require "sinatra/reloader" if development?
require 'pg'
require_relative "controllers/countries_controller.rb"
require_relative "models/countries.rb"


use Rack::Reloader
use Rack::MethodOverride

run CountriesController
