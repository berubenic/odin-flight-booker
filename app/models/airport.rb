class Airport < ApplicationRecord
    validates_presence_of :airport_code
    validates_length_of :airport_code, :maximum => 3
end