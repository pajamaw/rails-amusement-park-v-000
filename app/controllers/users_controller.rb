class UsersController < ApplicationController

  def home
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      session[:user_name] = @user.name
      # UsersController create logs you in
        redirect_to user_path(@user)
    else
      render '/'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def visit_signup
    new_user_path
    #link_to "Sign Up", new_user_path
    #<%= link_to "Sign Up", new_user_path %>
    redirect_to "/users/new"
    #redirect_to "Sign Up", new_user_path

  end

  def visit_signin
    user_path
    redirect_to "/users/show"
  end
  private

  def user_params
    params.require(:user).permit(:name, :password, :height, :tickets, :happiness, :nausea, :admin)
  end
end
