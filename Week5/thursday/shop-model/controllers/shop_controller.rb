class ShopController < Sinatra::Base

  #Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new {File.join(root, "views")}


  #INDEX
  get '/' do
    @title = "FIFA Fanshop - The official Ali Online Store"
    @inventory = Item.all
    erb :'/index'
  end


  #NEW
  get '/new' do
    @item = Item.new
    erb :'/new'
  end


  #SHOW
  get '/:id' do
    id = params[:id].to_i
    @item = Item.find(id)
    erb :'/show'
  end


  #CREATE
  post '/' do
    item = Item.new
    item.name = params[:name]
    item.description = params[:description]
    item.save
    redirect "/"
  end


  #EDIT
  get '/:id/edit' do
    id = params[:id].to_i
    @item = Item.find(id)
    erb :"edit"
  end


  #UPDATE
  put '/:id' do
    id = params[:id].to_i
    item = Item.find(id)
    item.name = params[:name]
    item.description = params[:description]
    item.save
    redirect "/#{id}"
  end


  #DESTROY
  delete '/:id' do
    id = params[:id].to_i
    Item.destroy(id)
    redirect "/"
  end

end
