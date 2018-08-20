class Booking < ApplicationRecord
  belongs_to :boat
  belongs_to :user
  validates :start_date, presence: true, uniqueness: true
  validates :end_date, presence: true, uniqueness: true
end
