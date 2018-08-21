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
      redirect_to dashboard_url
    else
      render 'boats/show'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params.permit(:status))
    redirect_to dashboard_path
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user, :boat, :status)
  end
end
