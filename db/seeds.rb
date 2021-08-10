# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports = Airport.create([{ airport_code: 'YYC', airport_name: 'Calgary International Airport'}, 
                            { airport_code: 'YEG', airport_name: 'Edmonton International Airport'},
                            { airport_code: 'YFC', airport_name: 'Fredericton International Airport'},
                            { airport_code: 'YQX', airport_name: 'Gander International Airport'},
                            { airport_code: 'YHZ', airport_name: 'Halifax Stanfield International Airport'},
                            { airport_code: 'YQM', airport_name: 'Greater Moncton Roméo LeBlanc International Airport'},
                            { airport_code: 'YUL', airport_name: 'Montréal–Trudeau International Airport'},
                            { airport_code: 'YOW', airport_name: 'Ottawa Macdonald–Cartier International Airport'},
                            { airport_code: 'YQB', airport_name: "Québec/Jean Lesage International Airport"},
                            { airport_code: 'YYT', airport_name: "St. John's International Airport"},
                            { airport_code: 'YYZ', airport_name: 'Toronto Pearson International Airport'},
                            { airport_code: 'YVR', airport_name: 'Vancouver International Airport'},
                            { airport_code: 'YXX', airport_name: 'Abbotsford International Airport'},
                            { airport_code: 'YWG', airport_name: 'Winnipeg International Airport'}
                            ])

flights = Flight.create([{ start_airport_id: 1, end_airport_id: 2, start_datetime: 'Mon, 09 Sep 2021 17:31:01 -0400', flight_duration_minutes: 120 },
                          { start_airport_id: 2, end_airport_id: 3, start_datetime: 'Mon, 10 Aug 2021 16:31:01 -0400', flight_duration_minutes: 400 },
                          { start_airport_id: 5, end_airport_id: 4, start_datetime: 'Mon, 11 Nov 2021 14:31:01 -0400', flight_duration_minutes: 500 },
                          { start_airport_id: 6, end_airport_id: 7, start_datetime: 'Mon, 12 Sep 2021 13:31:01 -0400', flight_duration_minutes: 300 },
                          { start_airport_id: 9, end_airport_id: 8, start_datetime: 'Mon, 13 Aug 2021 12:31:01 -0400', flight_duration_minutes: 100 },
                          { start_airport_id: 10, end_airport_id: 11, start_datetime: 'Mon, 14 Nov 2021 11:31:01 -0400', flight_duration_minutes: 500 },
                          { start_airport_id: 13, end_airport_id: 12, start_datetime: 'Mon, 15 Sep 2021 10:31:01 -0400', flight_duration_minutes: 600 },
                          { start_airport_id: 12, end_airport_id: 11, start_datetime: 'Mon, 16 Aug 2021 09:31:01 -0400', flight_duration_minutes: 700 },
                          { start_airport_id: 9, end_airport_id: 10, start_datetime: 'Mon, 17 Nov 2021 08:31:01 -0400', flight_duration_minutes: 200 },
                          { start_airport_id: 8, end_airport_id: 7, start_datetime: 'Mon, 18 Sep 2021 07:31:01 -0400', flight_duration_minutes: 800 },
                          { start_airport_id: 5, end_airport_id: 6, start_datetime: 'Mon, 19 Aug 2021 06:31:01 -0400', flight_duration_minutes: 900 },
                          { start_airport_id: 4, end_airport_id: 3, start_datetime: 'Mon, 20 Nov 2021 05:31:01 -0400', flight_duration_minutes: 1000 },
                          { start_airport_id: 1, end_airport_id: 2, start_datetime: 'Mon, 21 Sep 2021 04:31:01 -0400', flight_duration_minutes: 1200 },
                          { start_airport_id: 2, end_airport_id: 12, start_datetime: 'Mon, 22 Aug 2021 03:31:01 -0400', flight_duration_minutes: 600 },
                          { start_airport_id: 3, end_airport_id: 11, start_datetime: 'Mon, 23 Nov 2021 02:31:01 -0400', flight_duration_minutes: 700 },
                          { start_airport_id: 13, end_airport_id: 1, start_datetime: 'Mon, 24 Sep 2021 01:31:01 -0400', flight_duration_minutes: 400 }
                        ])