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
  end
end
