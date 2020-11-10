class BookingsController < ApplicationController
  def show
    @bookings = Booking.where(user_id: current_user.id)
  end
end
