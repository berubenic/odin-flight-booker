# frozen_string_literal: true

class Booking < ApplicationRecord
  has_many :booking_passenger

  has_many :passengers, through: :booking_passenger
  belongs_to :flight

  accepts_nested_attributes_for :passengers

  validates :flight_id, presence: true
end
