class PostsController < ApplicationController


  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    post_params = params.require(:post).permit(:title,:body,:author)
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def update
    @post = Post.find(params[:id])
    post_params = params.require(:post).permit(:title,:body,:author)
    @post.update(post_params)

    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end


end
