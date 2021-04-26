class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]
  def new
  end
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       session[:user_name] = @user.username
       redirect_to '/admin'
    else
         redirect_to '/login'
    end
  end

  def login
  end
  def destroy
    session[:user_id] = nil
    redirect_to admin_index_path
  end

  def welcome
  end
end
