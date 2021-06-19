require 'rails_helper'

feature 'user complete todo' do
  scenario 'successfully' do
    sign_in
    click_on 'Add a new todo'
    fill_in 'Title', with: 'Buy car'
    click_on 'Submit'

    click_on 'Mark complete'
    expect(page).to have_css '.todos li.completed', text: 'Buy car'
  end
end
