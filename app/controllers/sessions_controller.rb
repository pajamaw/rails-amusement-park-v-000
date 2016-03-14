class SessionsController <ApplicationController
  def new
    @users = User.all
  end

  def create
      session[:user_id] = user_params[:id]
      redirect_to user_path(user_params[:id])
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private 
  def user_params
    params.require(:user).permit(:id)
  end


end