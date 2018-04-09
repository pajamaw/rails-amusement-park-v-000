class RidesController < ApplicationController
  def new
    @ride = Ride.create(user_id:params[:user_id], attraction_id:params[:attraction_id])
    @ride.take_ride
    redirect_to user_path(@ride.user)
  end

  #def update
  #this isn't a route, this is just the method that updates
  #Object.update(...)
  #redirect to another route
end
