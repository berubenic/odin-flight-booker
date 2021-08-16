# frozen_string_literal:true

# creates random flights to populate seed.rb
class FlightCreator < ApplicationService
  attr_reader :start_airport_id, :end_airport_id, :start_datetime, :flight_duration_minutes

  AIRPORT_IDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14].freeze

  def initialize
    @start_airport_id = nil
    @end_airport_id = nil
    @start_datetime = nil
    @flight_duration_minutes = nil
  end

  def call
    airport_ids = random_airport_ids
    @start_airport_id = airport_ids[0]
    @end_airport_id = airport_ids[1]
    @start_datetime = random_future_datetime
    @flight_duration_minutes = rand(100..1000)
    self
  end

  private

  def random_airport_ids
    AIRPORT_IDS.sample(2)
  end

  def random_future_datetime(from = Time.now, to = Time.now + 1.year)
    t = Time.at(rand_in_range(from.to_f, to.to_f))
    DateTime.parse(t.to_s)
  end

  def rand_in_range(from, to)
    rand * (to - from) + from
  end
end
