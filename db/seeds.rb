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
