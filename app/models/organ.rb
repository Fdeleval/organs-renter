class Organ < ApplicationRecord
  belongs_to :user
  has_many :booking

  validates :organ_type, presence: true
  validates :organ_type, acceptance: { accept: ["heart", "brain", "lungs"] }
  validates :organ_type, presence: true

  # validates :available, acceptance: { accept: [0, 1] }
end
