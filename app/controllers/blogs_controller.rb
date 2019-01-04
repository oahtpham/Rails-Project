class BlogsController < ApplicationController
  skip_before_action :authorized, only: [:show]

  def new
    @blog = Blog.new
    @users = User.all
    find_user
  end

  def create
    @users = User.all
    @blog = Blog.create(blog_params)
    @blog.update(user_id: session[:user_id])
    redirect_to blog_path(@blog)
  end

  def show
    find_blog
    if session[:user_id]
      find_user
    end
    @comment = Comment.new
    @users = User.all
    render :show
  end

  def edit
    @users = User.all
    find_blog
    find_user
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
    params.require(:blog).permit(:title, :content)
  end

  def find_blog
     @blog = Blog.find(params[:id])
  end

  def find_user
    @user = User.find(session[:user_id])
  end


end
