class CountriesController < Sinatra::Base

  #Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new {File.join(root, "views")}

  #Index
  get '/' do
    erb :'countries/index'
  end

  #new
  get '/new' do
    'new'
  end

  #Show
  get '/:id' do
    "#{params[:id]}"
  end

  #Create
  post '/' do

  end

  #Edit
  get '/:id/edit' do

  end

  #Update
  put '/:id' do

  end

  #Destroy
  delete '/:id' do

  end

end
