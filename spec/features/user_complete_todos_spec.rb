require 'rails_helper'

feature 'user complete todo' do
  scenario 'successfully' do
    click_on 'Add a new todo'
    fill_in 'Title', with: 'Buy Car'
    click_on 'Submit'

    click_on 'Mark complete'
    expect(page).not_to have_css '.todos li.completed', text: 'Buy car'
  end
end
