class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :organs
  has_many :bookings
  validates :smoker, presence: true
  validates :drinker, presence: true
  validates :donor, presence: true
end
