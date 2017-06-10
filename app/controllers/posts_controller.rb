class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    k = params.require(:post).permit([:title, :body])
    @post = Post.create k
    redirect_to post_path(@post.id)
  end

  def show
    @post = Post.find params[:id]
  end

  def index
    @posts = Post.all
  end

end
