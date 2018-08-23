class Boat < ApplicationRecord
  include PgSearch
  has_many :bookings, dependent: :destroy
  belongs_to :user

  pg_search_scope :search_by_title_and_location,
    against: [ :title, :location ]


  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :title, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  validates :photo, presence: true
end
