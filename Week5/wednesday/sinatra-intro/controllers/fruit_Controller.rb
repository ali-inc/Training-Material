class FruitController < Sinatra::Base

  #Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new {File.join(root, "views")}

  $fruits = [{
    id: 0,
    title: "Apple",
    body: "Apple is my favourite fruit!"
    },
    {
    id: 1,
    title: "Peach",
    body: "I like peaches too!"
    },
    {
    id: 2,
    title: "Mango",
    body: "I like Mangos more!"
    }]


  #INDEX
  get '/fruits' do
    "<h1>Fruits Index</h1>"
    @title = "Fruit Bowl"
    @fruits = $fruits

    erb :'fruits/index'
  end


  #NEW
  get '/fruits/new' do
    "NEW : Wanna try a new fruit? What\'s that gonna be?"
  end


  #SHOW
  get '/fruits/:id' do

    id = params[:id].to_i

    "<h3>This page tastes like #{id}</h3>"

    @fruit = $fruits[id]
    @title = @fruit[:title]

    erb :'fruits/show'

  end


  #CREATE
  post '/fruits/:id' do

  end


  #EDIT
  get '/fruits/:id/edit' do
    "EDIT EDIT EDIT EDIT EDIT EDIT EDIT EDIT EDIT EDIT"
  end


  #UPDATE
  put '/fruits/:id' do

  end


  #DESTROY
  delete '/fruits/:id' do

  end

end
