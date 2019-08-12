class Reservation < ApplicationRecord
  belongs_to :dragon
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :one_booking_per_date

  def one_booking_per_date
    # create booked_dates
    booked_dates = user.reservations.map do |reservation|
      (reservation.start_date..reservation.end_date).map { |d| d }
    end.flatten

    # create desired_dates
    desired_dates = (self.start_date..self.end_date).map { |d| d }

    # compare
    desired_dates.each do |date|
      errors.add(:base, "You already have a dragon booked for this date") if booked_dates.include?(date)
    end
  end
end
