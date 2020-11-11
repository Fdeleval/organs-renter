class BookingsController < ApplicationController
  def show
    @user = current_user
    @bookings = Booking.where(user_id: @user.id)
    @email_name = split_string(@user.email)


  end


  def split_string(email_adress)

    i = email_adress.index('@')
    email_adress[0...i]
  end
end
