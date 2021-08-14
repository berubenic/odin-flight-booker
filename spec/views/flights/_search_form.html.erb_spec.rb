require 'rails_helper'

RSpec.describe 'flights/_search_form' do
  before do
    assign(:flight_search, FlightSearch.new)
  end

  it 'displays flight search form' do
    render

    assert_select 'select', 2
    assert_select 'input[type=number]', 1
    assert_select 'input[type=date]', 1
    assert_select 'input[type=submit]', 1
  end
end
