class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :title, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  validates :photo, presence: true
end
