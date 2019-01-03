class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:index, :new, :create, :show]

  def search
    if @user = User.find_by(first_name: params[:search])
      redirect_to user_path(@user.user_name)
    elsif @user = User.find_by(user_name: params[:search])
      redirect_to user_path(@user.user_name)
    else
      render :error
    end
  end

  def index
    @users = User.all
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    render :index
  end

  def show
    find_user
    @comment = Comment.new
    render :show
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.create(strong_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to controller:'welcome', action: 'home'
    else
      @errors = @user.errors.full_messages
      redirect_to users_new_path
    end
  end

  def edit
    find_user
    render :edit
  end

  def update
    find_user
    if @user.update(strong_params)
      redirect_to user_path(@user.user_name)
    else
      @errors = @user.errors.full_messages
      render :edit
    end
  end

  def delete
    find_user
    @user.delete
    redirect_to users_path
  end

  private


  def strong_params
    params.require(:user).permit(:user_name, :first_name, :last_name, :age, :bio, :img_url, :password, :password_confirmation, :music_url)
  end

  def find_user
     @user = User.find_by(user_name: params[:user_name])
  end

end
