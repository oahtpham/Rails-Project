class UsersController < ApplicationController

  def search
    if @user =    User.find_by(full_name: params[:search])
      redirect_to user_path(@user.user_name)
    elsif @user =    User.find_by(user_name: params[:search])
      redirect_to user_path(@user.user_name)
    else
      render :error
    end
  end

  def index
    @users = User.all
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
      # @user.save
      redirect_to users_path
    else
      @errors = @user.errors.full_messages
      render :new
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

  def destroy
    find_user
    @user.delete
    redirect_to users_path
  end

  private


  def strong_params
    params.require(:user).permit(:user_name, :full_name, :age, :bio, :img_url)
  end

  def find_user
     @user = User.find_by(user_name: params[:user_name])
  end

end
