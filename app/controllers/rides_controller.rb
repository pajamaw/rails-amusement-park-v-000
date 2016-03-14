class RidesController <ApplicationController
  def new
  end

  def create
    @user = User.find_by(id: session[:user_id])
    @ride = Ride.create(user_id: session[:user_id], attraction_id: params[:attraction_id])
    flash[:notice] = @ride.take_ride
    redirect_to user_path(@ride.user)
    end

end