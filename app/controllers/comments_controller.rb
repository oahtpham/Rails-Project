class CommentsController < ApplicationController

  def add_comment
    @blog = Blog.find(params[:id])
    @user = current_user
    @comment = Comment.new(user_id: @user.id, blog_id: @blog.id)
    @comment.update(comment_params)
    redirect_to blog_path(@blog)
  end

  def destroy
    @blog = Blog.find(params[:id])
    @comment = Comment.find_by(blog_id: @blog.id)
    @comment.delete
    redirect_to blog_path(@blog)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end

end
