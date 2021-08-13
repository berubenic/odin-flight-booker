# frozen_string_literal:true

require 'rails_helper'

RSpec.describe 'FlightsController', type: :request do
  describe '#index' do
    it 'displays notice when no flights match search' do
      get '/',
          params: { flight_search: { date: Time.zone.today, number_of_passengers: 0, start_airport_id: nil,
                                     end_airport_id: nil } }
      expect(response).to have_http_status(:ok)
      expect(flash[:notice]).to eq('No matching flights available')
    end

    it 'displays notice when flights are found' do
      get '/',
          params: { flight_search: { date: Time.zone.today, number_of_passengers: 1, start_airport_id: 1,
                                     end_airport_id: 1 } }
      expect(response).to have_http_status(:ok)
      expect(flash[:notice]).to eq('Flights found: ')
    end
  end
end
