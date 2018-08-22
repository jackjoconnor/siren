class Booking < ApplicationRecord
  belongs_to :boat
  belongs_to :user
  validate :start_date_cannot_be_in_the_past
  validate :end_date_cannot_be_earlier_than_start_date
  validates :start_date, presence: true, uniqueness: { scope: :boat}
  validates :end_date, presence: true, uniqueness: true

  private

  def start_date_cannot_be_in_the_past
    if !start_date.blank? and start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def end_date_cannot_be_earlier_than_start_date
    if !end_date.blank? and end_date < start_date
      errors.add(:end_date, "can't be before start_date")
    end
  end
end
