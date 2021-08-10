class Flight < ApplicationRecord
    belongs_to :start_airport, :class_name => 'Airport'
    belongs_to :end_airport, :class_name => 'Airport'

    validates_presence_of :start_airport_id, :end_airport_id, :start_datetime, :flight_duration_minutes 
    validate :
end