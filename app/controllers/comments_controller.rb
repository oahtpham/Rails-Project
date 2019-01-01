class CommentsController < ApplicationController

  def add_comment
    @blog = Blog.find(params[:id])
    @user = @blog.user
    @comment = Comment.new(blog_id: @blog.id)
    @comment.update(comment_params)
    redirect_to blog_path(@blog)
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :comment)
  end
  
end
