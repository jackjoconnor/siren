class BoatsController < ApplicationController
  before_action :set_boat, only: [:edit, :update, :show, :destroy]

  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
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
