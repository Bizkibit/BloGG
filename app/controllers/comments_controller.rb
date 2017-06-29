class CommentsController < ApplicationController

  def create
    i = params.require(:comment).permit([:body])
    @post = Post.find params[:post_id]
    @comment = Comment.new i
    @comment.post = @post
    @comment.user = current_user
    if @comment.save
      flash[:notice] = 'Comment created'
      redirect_to post_path(@post)
    else
      flash[:alert] = 'Comment failed'
      render 'posts/show'
    end
  end

  def destroy
    comment = Comment.find params[:id]
    # @post = Post.find params[:post_id]
    @post = comment.post
    comment.destroy
    flash[:alert] = 'comment deleted'
    redirect_to post_path(@post)
  end

  private

end
