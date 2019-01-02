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

  def delete
    @blog = Blog.find(params[:id]).destroy
    redirect_to user_path(@blog.user.user_name)
  end

private

  def blog_params
    params.require(:blog).permit(:user_id, :title, :content)
  end

end
