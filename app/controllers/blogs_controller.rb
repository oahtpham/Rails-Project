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
    find_blog
    @comment = Comment.new
    @users = User.all
    render :show
  end

  def edit
    @users = User.all
    find_blog
    render :edit
  end

  def update
    find_blog
    @blog.update(blog_params)
    redirect_to blog_path(@blog)
  end

  def destroy
    find_blog.delete
    redirect_to user_path(@blog.user.user_name)
  end

private

  def blog_params
    params.require(:blog).permit(:user_id, :title, :content)
  end

  def find_blog
     @blog = Blog.find(params[:id])
  end


end
