require 'date'
class BookingsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!
  def index
    @user = current_user
    @bookings = Booking.where(user_id: @user.id)
    @email_name = split_string(@user.email)
  end


  def split_string(email_adress)
    i = email_adress.index('@')
    email_adress[0...i].capitalize
  end

  def create
    date_start = Date.parse(params['date_start'])
    date_end = Date.parse(params['date_end'])
    organ_id = params['organ_id']
    user_id = current_user.id

    booking = Booking.new({date_start: date_start, date_end: date_end, organ_id: organ_id, user_id: user_id})
    booking.save
    redirect_to("/")
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    book = Booking.find(params[:booking][:id])
    book.accepted = params[:booking][:accepted]
    book.save
    redirect_to("/")
  end
end
