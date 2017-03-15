class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.create(user_params)
    login(@user) 
    redirect_to @user 
  end

  def show
    @user = User.find_by_id(params[:id])
    if @user != current_user
      redirect_to root_path
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :date_joined, :image, :current_city, :email, :password)
  end

end
