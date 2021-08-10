class Airport < ApplicationRecord
    has_many :departing_flights, :class_name => 'Flight', :foreign_key => 'start_airport_id'
    has_many :arriving_flights, :class_name => 'Flight', :foreign_key => 'end_airport_id'

    validates_presence_of :code, :name
    validates_length_of :code, :maximum => 3
end