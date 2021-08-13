class BookingPassenger < ApplicationRecord
  belongs_to :booking
  belongs_to :passenger

  validates :booking_id, :passenger_id, presence: true
end
