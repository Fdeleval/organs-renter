class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one_attached :photo
  has_many :organs
  has_many :bookings

  # validates :donor, acceptance: { accept: [0, 1] }
  # validates :smoker, acceptance: { accept: [0, 1] }
  # validates :drinker, acceptance: { accept: [0, 1] }
end
