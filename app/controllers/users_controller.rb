class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :login]
  def new
    @user = User.new
  end
  def login
  end
  def create
    @user = User.create(params.require(:user).permit(:username,        
      :password))
      session[:user_id] = @user.id
      redirect_to '/welcome'
  end
end
