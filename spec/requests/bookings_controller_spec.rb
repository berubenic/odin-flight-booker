# frozen_string_literal:true

require 'rails_helper'

RSpec.describe 'BookingsController', type: :request do
  describe '#new' do
    before do
      Airport.create!(id: 1, name: 'first', code: 'F')
      Airport.create!(id: 2, name: 'second', code: 'S')
      Flight.create!(id: 1, start_airport_id: 1, end_airport_id: 2, start_datetime: Time.zone.today,
                     flight_duration_minutes: 100)
    end

    it 'displays notice when no flights match search' do
      get '/bookings/new', params: { 'flight_id' => '1', 'number_of_passengers' => '', 'commit' => 'Book flight' }
      expect(response).to have_http_status(:ok)
    end

    xit 'displays notice when flights are found' do
      get '/',
          params: { flight_search: { date: Time.zone.today, number_of_passengers: 1, start_airport_id: 1,
                                     end_airport_id: 1 } }
      expect(response).to have_http_status(:ok)
      expect(flash[:notice]).to eq('Flights found: ')
    end
  end
end
