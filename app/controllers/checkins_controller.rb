class CheckinsController < ApplicationController
    def index
    @checkins = Checkin.all
    @checkin = Checkin.new

 	 end

  def create
    checkin = Checkin.create(checkin_params)
    render json: checkin, status: 201
  end

  def show
    location = Location.find_by_id(params[:id])
    @checkins = location.checkins
    render json: @checkins, status: 201
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def checkin_params
    params.require(:checkin).permit(:photo, :name, :comment, :location_id, :url)    
  end
end
