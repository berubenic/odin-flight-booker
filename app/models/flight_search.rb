class FlightSearch
    include ActiveModel::Model
  
    attr_accessor :date, :number_of_passengers, :start_airport_id, :end_airport_id
  
    validates_presence_of :number_of_passengers
    validates :date, date: { after_or_equal_to: Proc.new { Date.today } }
  
  end
  