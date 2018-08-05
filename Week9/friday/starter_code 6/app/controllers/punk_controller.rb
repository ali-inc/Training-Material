require "httparty"
require "json"
require "date"

class PunkController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
    register Sinatra::Reloader
  end

  get '/beer' do

    @api_call = PunkAPI.new
    @beer = @api_call.punk_index_service

    erb :'punk/index'

  end

  get '/beer/:id' do

    id = params[:id].to_i

    @api_call = PunkAPI.new
    @beer = @api_call.punk_show_service.get_show_beer(id)
    @brew_date = Date.parse(@beer.first["first_brewed"]).strftime("%B %Y")


    @beer = @beer.first

    erb :'punk/show'

  end

end
