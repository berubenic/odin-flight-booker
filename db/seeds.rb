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
