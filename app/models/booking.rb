class Booking < ApplicationRecord
  belongs_to :boat
  belongs_to :user
  validate :start_date_cannot_be_in_the_past
  validate :end_date_cannot_be_earlier_than_start_date
  validates :boat, uniqueness: { scope: [:user, :start_date] }
  validates :start_date, presence: true
  validates :end_date, presence: true

  private

  def start_date_cannot_be_in_the_past
    if !start_date.blank? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def end_date_cannot_be_earlier_than_start_date
    if end_date.present? && end_date < start_date
      errors.add(:end_date, "can't be before start_date")
    end
  end
end
