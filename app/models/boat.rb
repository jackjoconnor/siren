class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :title, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  validates :photo, presence: true
  validates :location, presence: true
end
