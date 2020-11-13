class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @user = current_user

    @bookings = Booking.where("user_id = #{current_user.id}")
    r = Booking.all
    @rentings_new = []
    r.each do |booking|
      if booking.organ.user.id == current_user.id && booking.accepted == false
        @rentings_new.push(booking)
      end
    end
    @rentings_old = []
    r.each do |booking|
      if booking.organ.user.id == current_user.id && booking.accepted == true
        @rentings_old.push(booking)
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
