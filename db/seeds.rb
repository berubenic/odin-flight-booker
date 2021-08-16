# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports = Airport.create([{ code: 'HOF', name: 'Hofsvagr International Airport' },
                           { code: 'ISL', name: 'Islandshaf International Airport' },
                           { code: 'SKE', name: 'Skeio International Airport' },
                           { code: 'LAN', name: 'Langadalsa International Airport' },
                           { code: 'HAL', name: 'Hals International Airport' },
                           { code: 'BRA', name: 'Brattsholt International Airport' },
                           { code: 'MOL', name: 'Moldatun International Airport' },
                           { code: 'DOF', name: 'Dofrar International Airport' },
                           { code: 'HEL', name: 'Hellisdalr International Airport' },
                           { code: 'HVA', name: 'Hvalvatnsfjoror International Airport' },
                           { code: 'ALP', name: 'Alpta International Airport' },
                           { code: 'BOT', name: 'Botarskal International Airport' },
                           { code: 'OLA', name: 'Olafsdalr International Airport' },
                           { code: 'HOR', name: 'Horgsholt International Airport' }])
100.times do
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
