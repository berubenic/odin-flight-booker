class Airport < ApplicationRecord
    has_and_belongs_to_many :flights

    validates_presence_of :airport_code
    validates_length_of :airport_code, :maximum => 3
end