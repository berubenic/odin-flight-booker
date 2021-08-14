# frozen_string_literal:true

require 'rails_helper'

RSpec.describe 'FlightsController', type: :request do
  describe '#index' do
    fixtures :airports, :flights

    it 'has a 200 status code' do
      get '/',
          params: nil
      expect(response).to have_http_status(:ok)
    end

    it 'displays notice when search criterias are invalid' do
      get '/',
          params: { flight_search: { date: Time.zone.today, number_of_passengers: 0, start_airport_id: nil,
                                     end_airport_id: nil } }
      expect(flash[:notice]).to eq('Invalid search criterias')
    end

    it 'displays notice when no flights are found' do
      get '/',
          params: { flight_search: { date: Time.zone.today, number_of_passengers: 1, start_airport_id: 1,
                                     end_airport_id: 1 } }
      expect(flash[:notice]).to eq('No matching flights available')
    end

    it 'displays notice when flights are found' do
      get '/',
          params: { flight_search: { date: Time.zone.today, number_of_passengers: 1, start_airport_id: airports(:airport_one).id,
                                     end_airport_id: airports(:airport_two).id } }
      expect(flash[:notice]).to eq(nil)
    end
  end
end
