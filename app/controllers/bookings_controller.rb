class BookingsController < ApplicationController
  def index # users/:id/bookings
    @user = User.find(params[:user_id])
    @bookings = Booking.where(user: @user)
  end
  
  def create
    @booking = Booking.new(booking_params)
    @booking.toilet = @toilet
    if @bookmark.save
      redirect_to toilet_path(@toilet)
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
