class ProfilesController < ApplicationController

  def index
    @users = User.where.not(latitude: nil, longitude: nil)

     # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end

    @bookings = Booking.where("user_id = #{current_user.id}")
    r = Booking.all
    @rentings = []
    r.each do |booking|
      if booking.organ.user.id == current_user.id
        @rentings.push(booking)
      end
    end
  end
end
