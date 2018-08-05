class VegetableController < Sinatra::Base

  #Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new {File.join(root, "views")}

  $vegetables = [{
    id: 0,
    title: "Lettuce",
    body: "Never under estimate lettuce!"
    },
    {
    id: 1,
    title: "Cucumber",
    body: "I like cucumbers too!"
    },
    {
    id: 2,
    title: "Tomato",
    body: "It the last ingredient for a perfect salad!"
    }]


  #INDEX
  get '/vegetables' do
    "<h1>vegetables Index</h1>"
    @title = "vegetable Bowl"
    @vegetables = $vegetables

    erb :'vegetables/index'
  end


  #NEW
  get '/vegetables/new' do
    "NEW : Wanna try a new vegetable? What\'s that gonna be?"
  end


  #SHOW
  get '/vegetables/:id' do

    id = params[:id].to_i

    "<h3>This page tastes like #{id}</h3>"

    @vegetable = $vegetables[id]
    @title = @vegetable[:title]

    erb :'vegetables/show'

  end


  #CREATE
  post '/vegetables/:id' do

  end


  #EDIT
  get '/vegetables/:id/edit' do
    "EDIT EDIT EDIT EDIT EDIT EDIT EDIT EDIT EDIT EDIT"
  end


  #UPDATE
  put '/vegetables/:id' do

  end


  #DESTROY
  delete '/vegetables/:id' do

  end

end
