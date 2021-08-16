# frozen_string_literal: true

desc 'This task is called by the Heroku scheduler add-on'
task update_flights_and_bookings: :environment do
  100.times do |_num|
    flight = FlightCreator.call
    Flight.create(start_airport_id: flight.start_airport_id, end_airport_id: flight.end_airport_id,
                  start_datetime: flight.start_datetime, flight_duration_minutes: flight.flight_duration_minutes)
  end
  bookings = Booking.create([{ flight_id: 1 },
                             { flight_id: 2 },
                             { flight_id: 2 }])
  passengers = Passenger.create([{ name: 'Joe', email: 'joe@joe.com' },
                                 { name: 'Larry', email: 'larry@larry.com' },
                                 { name: 'Nicholas', email: 'nicholas@nicholas.com' },
                                 { name: 'Zachary', email: 'zachary@zachary.com' }])

  bookings[0].passengers << passengers[0]
  bookings[0].passengers << passengers[1]
  bookings[0].passengers << passengers[2]
  bookings[0].passengers << passengers[3]

  bookings[1].passengers << passengers[0]
  bookings[1].passengers << passengers[1]

  bookings[2].passengers << passengers[2]
  bookings[2].passengers << passengers[3]
end

task destroy_past_flights: :environment do
  yesterday = Time.zone.today - 1.day
  past_flights = Flight.where('start_datetime < ?', yesterday)
  past_flights.destroy_all
end
