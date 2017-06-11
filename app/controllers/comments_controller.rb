class CommentsController < ApplicationController
  def create
    i = params.require(:comment).permit([:body])
    @post = Post.find params[:post_id]
    @comment = Comment.new i
    @comment.post= @post
    if @comment.save
      flash[:notice] = 'Comment created'
    else
      flash[:alert] = 'Comment failed'
    end
    redirect_to post_path(@post)
  end

  def destroy
  end
end
