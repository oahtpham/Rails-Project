class WelcomeController < ApplicationController

  def home
    find_user
    @comment = Comment.new
  end

  private

  def find_user
     @user = User.find_by(user_name: params[:user_name])
  end

end
