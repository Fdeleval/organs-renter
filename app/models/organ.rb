class Organ < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :organ_type, presence: true
  validates :organ_type, acceptance: { accept: ["heart", "brain", "lungs"] }
  validates :organ_type, presence: true

  geocoded_by user: :address
  after_validation :geocode, if: :will_save_change_to_address?

  # validates :available, acceptance: { accept: [0, 1] }
end
