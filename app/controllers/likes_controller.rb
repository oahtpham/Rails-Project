class LikesController < ApplicationController

  def create
    @blog = Blog.find(params[:id])
    @blog.likes.create
    redirect_to blog_path(@blog)
  end

end
