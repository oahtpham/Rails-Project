class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    @user = user.try(:authenticate, params[:user][:password])
    return redirect_to(controller: 'sessions', action: 'new') unless @user
    session[:user_name] = @user.user_name
    redirect_to controller: 'users', action: 'index'
  end

  def destroy
    session.delete :user_name
    redirect_to '/'
  end

end
