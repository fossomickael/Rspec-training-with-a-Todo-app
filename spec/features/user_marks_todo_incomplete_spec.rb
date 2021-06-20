require 'rails_helper'

feature 'user marks todo incomplete' do
  scenario 'successfully' do
    sign_in

    create_todo('Buy car')
    click_on 'Mark complete'
    click_on 'Mark incomplete'
    expect(page).to display_todo('Buy car')
  end
end
