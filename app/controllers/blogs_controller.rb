class BlogsController < ApplicationController

  def new
    @blog = Blog.new
    @users = User.all
  end

  def create
    @users = User.all
    @blog = Blog.create(blog_params)
    redirect_to blog_path(@blog)
  end

  def show
    @blog = Blog.find(params[:id])
    @comment = Comment.new
    @users = User.all
    render :show
  end

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

  def blog_params
    params.require(:blog).permit(:user_id, :title, :content)
  end

end
