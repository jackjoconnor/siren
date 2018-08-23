class BoatsController < ApplicationController
  before_action :set_boat, only: [:edit, :update, :show, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show, :new]

  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @boat.update(boat_params)
    redirect_to dashboard_path
  end

  def destroy
    @boat.destroy
    redirect_to dashboard_path
  end

  def show
    @marker = [
      {
        lat: @boat.latitude,
        lng: @boat.longitude,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    ]
    @booking = Booking.new
  end

  private

  def boat_params
    params.require(:boat).permit(:title, :description, :photo, :price, :capacity)
  end

  def set_boat
    @boat = Boat.find(params[:id])
  end
end
