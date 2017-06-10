class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    k = params.require(:post).permit([:title, :body])
    @post = Post.new k
    if @post.save
      redirect_to post_path(@post.id)
    else
      # notice[:alert] = 'failed to create a post'
      render :new
    end
  end

  def show
    @post = Post.find params[:id]
  end

  def index
    @posts = Post.all
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    k = params.require(:post).permit([:title, :body])
    @post = Post.find params[:id]
    @post.update k
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy
    redirect_to posts_path
  end

end
