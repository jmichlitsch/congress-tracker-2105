class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    new_user = User.create(user_params)
    flash[:sucess] = "Welcome, #{new_user.username}!"
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
