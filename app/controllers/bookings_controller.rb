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
    date_params = booking_params
    start_time = DateTime.parse("#{date_params[:date]}T#{date_params[:start_time]}")
    end_time = DateTime.parse("#{date_params[:date]}T#{date_params[:end_time]}")
    @booking = Booking.new(start_time: start_time, end_time: end_time)
    @booking.user = @user
    @booking.toilet = @toilet
    @booking.status = "pending"
    if @booking.save
      redirect_to bookings_path
    else
      render "toilets/show", status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:update_action]
    @booking.save
    redirect_to bookings_path, status: :see_other
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :date)
  end
end
