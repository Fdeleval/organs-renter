class Organ < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :type, presence: true
  validates :type, acceptance: { accept: ["heart", "brain", "lungs"] }
  validates :type, presence: true
end
