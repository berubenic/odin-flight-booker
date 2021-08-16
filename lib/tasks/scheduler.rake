# frozen_string_literal: true

desc 'This task is called by the Heroku scheduler add-on'
task update_flights_and_bookings: :environment do
  10.times do |_num|
    flight = FlightCreator.call
    Flight.create(start_airport_id: flight.start_airport_id, end_airport_id: flight.end_airport_id,
                  start_datetime: flight.start_datetime, flight_duration_minutes: flight.flight_duration_minutes)
  end
end

task destroy_past_flights: :environment do
  yesterday = Time.zone.today - 1.day
  past_flights = Flight.where('start_datetime < ?', yesterday)
  past_flights.destroy_all
end
