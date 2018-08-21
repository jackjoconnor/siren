class BookingsController < ApplicationController
  def index
  end

  def create
    @booking = Booking.new(booking_params)
    @boat = Boat.find(params[:boat_id])
    @user = current_user
    @booking.boat = @boat
    @booking.user = @user
    if @booking.save
      redirect_to bookings_path
    else
      render 'boats/show'
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user, :boat)
  end
end
