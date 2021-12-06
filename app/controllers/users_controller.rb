class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def user_params
    params.require(:user).permit(:name,:email,:password)
  end

  def create
    def user_params
      params.require(:user).permit(:name,:email,:password)
    end

    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    def user_params
      params.require(:user).permit(:name,:email,:password)
    end

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end
end