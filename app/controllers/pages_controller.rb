class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @user = current_user

    @bookings = Booking.where("user_id = #{current_user.id}")
    r = Booking.all
    @rentings = []
    r.each do |booking|
      if booking.organ.user.id == current_user.id
        @rentings.push(booking)
      end
    end
  end

  def values
  end

  def carer
  end

  def faqs
  end

  def who
  end
end
