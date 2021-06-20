require 'rails_helper'

feature 'user complete todo' do
  scenario 'successfully' do
    sign_in

    create_todo('Buy car')
    click_on 'Mark complete'
    expect(page).to display_completed_todo('Buy car')
  end
end
