# frozen_string_literal:true

require 'rails_helper'

RSpec.describe 'BookingsController', type: :request do
  describe '#new' do
    fixtures :airports, :flights

    it 'has a 200 status code' do
      get '/bookings/new',
          params: { 'flight_id' => flights(:flight_one).id, 'number_of_passengers' => '', 'commit' => 'Book flight' }
      expect(response).to have_http_status(:ok)
    end
  end
end
