class UserController < ApplicationController

  def home
  end

  def new
  end

  def visit_signup
    redirect_to "/user/new"
  end
end
