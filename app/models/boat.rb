class Boat < ApplicationRecord

  has_many :bookings, dependent: :destroy
  belongs_to :user

  pg_search_scope :search_by_title_and_location,
    against: [ :title, :location ]


  mount_uploader :photo, PhotoUploader
  validates :title, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  validates :photo, presence: true
end
