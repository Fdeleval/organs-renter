class Organ < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :organ_type, presence: true
  validates :organ_type, acceptance: { accept: ["heart", "brain", "lungs"] }
  validates :organ_type, presence: true
end
