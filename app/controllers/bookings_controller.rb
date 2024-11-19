class BookingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @bookings = Booking.where(user: @user)
  end
end
