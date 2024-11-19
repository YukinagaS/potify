class BookingsController < ApplicationController
  def index # users/:id/bookings
    @user = User.find(params[:user_id])
    @bookings = Booking.where(user: @user)
  end
end
