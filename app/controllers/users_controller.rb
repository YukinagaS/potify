class UsersController < ApplicationController
 def show
  @user = current_user
  @toilets = @user.toilets
  @toilet_bookings = Booking.where(toilet_id: @toilets)
  @bookings = @user.bookings
 end
end
