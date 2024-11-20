class BookingsController < ApplicationController

  def index # users/:id/bookings
    @user = current_user
    @toilets = @user.toilets
    @toilet_bookings = Booking.where(toilet_id: @toilets)
    @bookings = @user.bookings
  end

  def create
    @user = current_user
    @toilet = Toilet.find(params[:toilet_id])
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.toilet = @toilet
    @booking.status = "pending"
    if @booking.save
      redirect_to bookings_path
    else
      render "toilets/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
