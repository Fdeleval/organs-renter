class Booking < ApplicationRecord
  belongs_to :user
  has_one :organ
  has_one :review


  validates :date_start, presence: true
  validates :date_end, presence: true
end
