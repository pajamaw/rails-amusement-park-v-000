class UsersController < ApplicationController

  def home
  end

  def new
    @user = User.new
  end

  def visit_signup
    redirect_to "/user/new"
  end
end
