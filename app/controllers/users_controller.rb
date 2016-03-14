class UsersController <ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to @user
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    @user.save
    redirect_to @user
  end

  def destroy
    session[:id].clear
    redirect_to '/'
  end

  private
  def user_params
    params.require(:user).permit(:name, :admin, :height, :happiness, :nausea, :tickets)
  end
end
