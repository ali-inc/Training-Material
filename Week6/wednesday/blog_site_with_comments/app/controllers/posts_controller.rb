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
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html{redirect_to @post, notice: "' #{@post.title}' was created"}
      else
        format.html{render :new}
      end
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    respond_to do |format|
      if @post.update(post_params)
        format.html{redirect_to @post, notice: "' #{@post.title}' was successfully updated"}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:title,:body,:author)
  end

end
