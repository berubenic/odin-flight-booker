class Passenger < ApplicationRecord
  validates_presence_of :first_name, :last_name, :age
  validates_numericality_of :age, less_than_or_equal_to: 120
end

