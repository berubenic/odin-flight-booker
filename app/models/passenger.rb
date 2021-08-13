# frozen_string_literal: true

class Passenger < ApplicationRecord
  has_many :booking_passenger
  has_many :bookings, through: :booking_passenger
  has_many :flights, through: :bookings

  validates :name, :email, presence: true
end
