require 'rails_helper'

RSpec.describe 'bookings/new' do
  fixtures :airports, :flights, :passengers
  before do
    assign(:flight, flights(:flight_one))
  end

  it 'displays flight information' do
    render

    assert_select 'h3', 'FROM Airport one TO Airport two'
    assert_select 'h4', "Flight date: #{I18n.l(Time.zone.now, format: :long)}"
  end

  it 'display new booking form' do
    render

    assert_select '.form-container', 1
    assert_select 'form', 1
    assert_select '.nested-form-container', 1
    assert_select 'input[type=submit]', 1
  end
end
