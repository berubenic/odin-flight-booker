class FlightSearch
    include ActiveModel::Validations
    include ActiveModel::Conversion
    extend ActiveModel::Naming
  
    attr_accessor :date
  
    validates_presence_of :date
    validate :date_cannot_be_in_futur

    def date_cannot_be_in_future
        if date.future?
            errors.add(:past_date, "can't be in the past")
        end
    end
  
  end
  