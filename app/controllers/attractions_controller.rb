class AttractionsController < ApplicationController
  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
    if @attraction.save
      redirect_to attraction_path(@attraction)
    else
      render 'new'
    end
  end

  def index
    @attractions = Attraction.all
  end

  def show
     @ride = Ride.new
    #@attraction = Attraction.find_by(id: params[:id]) expected: "/attractions/2" got: "/attraction"
    #@attraction = Attraction.find(params[:id]) expected: "/attractions/2" got: "/attraction"
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :nausea_rating, :happiness_rating)
  end
end
