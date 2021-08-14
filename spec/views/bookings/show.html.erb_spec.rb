require 'rails_helper'

RSpec.describe 'bookings/show' do
  fixtures :flights, :passengers
  before do
    assign(:flight, flights(:flight_one))
    assign(:passengers, [])
  end

  it 'displays flight information' do
    render

    assert_select 'h3', 'FROM Airport one TO Airport two'
    assert_select 'h4', "Flight date: #{I18n.l(Time.zone.now, format: :long)}"
  end

  it 'displays passenger details for one passenger' do
    assign(:passengers, [passengers(:passenger_one)])
    render

    assert_select 'ul' do
      assert_select 'li', 1
    end
  end

  it 'displays passenger details for two passengers' do
    assign(:passengers, [passengers(:passenger_one), passengers(:passenger_two)])
    render

    assert_select 'ul' do
      assert_select 'li', 2
    end
  end
end
