class PostController < Sinatra::Base

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
    "<h1>Main Index Page</h1>
    <ul>
    <li><a href='/posts'>Posts Index</a></li>
    <li><a href='/fruits'>Fruits Index</a></li>
    <li><a href='/vegetables'>Vegetables Index</a></li>
    </ul>"
  end

  #INDEX
  get '/posts' do

    @title = "Blog Posts"

    @posts = Post.all

    erb :'posts/index'
  end


  #NEW
  get '/posts/new' do
    "NEW NEW NEW NEW NEW"

    @post = Post.new

    erb :'posts/new'
  end


  #SHOW
  get '/posts/:id' do
    id = params[:id].to_i

    @post = Post.find(id)

    erb :'posts/show'
  end


  #CREATE
  post '/posts/' do

    post = Post.new

    post.title = params[:title]
    post.body = params[:body]

    post.save

    redirect "/posts"

  end


  #EDIT
  get '/posts/:id/edit' do
    id = params[:id].to_i

    @post = Post.find(id)

    erb :"posts/edit"

  end


  #UPDATE
  put '/posts/:id' do
    id = params[:id].to_i

    post = Post.find(id)

    post.title = params[:title]
    post.body = params[:body]

    post.save

    redirect "/posts/#{id}"

  end


  #DESTROY
  delete '/posts/:id' do

    id = params[:id].to_i

    Post.destroy(id)


    redirect "/posts"

  end

end
