# frozen_string_literal: true

class Airport < ApplicationRecord
  has_many :departing_flights, class_name: 'Flight', foreign_key: 'start_airport_id', dependent: nil,
                               inverse_of: :start_airport
  has_many :arriving_flights, class_name: 'Flight', foreign_key: 'end_airport_id', dependent: nil,
                              inverse_of: :end_airport

  validates :code, :name, presence: true
  validates :code, length: { maximum: 3 }
end
