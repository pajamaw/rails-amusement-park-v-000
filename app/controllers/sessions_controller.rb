class SessionsController < ApplicationController

  def signin
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name]) #Specify [:user][:name])
      if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user) #Continue with @user
      else
      render 'signin'
      end
  end

  def destroy
    #:user_id.delete
    #session[:user_id].delete
    #session.delete[:user_id].delete
    #@user.id.delete
    #reset session
    #session.delete :user_id
    #@user.destroy
    #Session.find(params[:id]).destroy
    #Session.find(params[:user_id]).destroy
    #session[:user_id].destroy
    #session.destroy
    
    redirect_to '/'
  end
end
