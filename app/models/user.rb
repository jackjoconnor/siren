class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :owned_boats, class_name: "Boat"
  has_many :booked_boats, through: :bookings, source: :boat
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader
end
