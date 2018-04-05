class UsersController < ApplicationController

  def home
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.password = params[:user][:password]
    @user.name = params[:user][:name]
    if @user.save
      session[:user_id] = @user.id
      session[:user_name] = @user.name
      # UsersController create logs you in
        redirect_to new_user_path
    else
      render '/'
    end
  end

  def visit_signup
    redirect_to "/users/new"
  end

  def visit_signin
    redirect_to "/users/show"
  end
end
