require 'rails_helper'

RSpec.describe 'flights/_selection_form' do
  fixtures :flights

  it 'displays flight selection form for two flights' do
    assign(:flights, [flights(:flight_one), flights(:flight_two)])

    render

    assert_select 'input[type=radio]', 2
    assert_select 'ul', 2
    assert_select 'li', 4
    assert_select 'input[type=submit]', 1
  end

  it 'displays flight selection form for one flight' do
    assign(:flights, [flights(:flight_one)])

    render

    assert_select 'input[type=radio]', 1
    assert_select 'ul', 1
    assert_select 'li', 2
    assert_select 'input[type=submit]', 1
  end
end
