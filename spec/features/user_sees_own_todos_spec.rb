require 'rails_helper'

feature 'user see owns todos' do
  scenario 'successfully' do
    Todo.create!(title: "Buy car", email: 'driver@example.com')

    sign_in_as 'someone_else@example.com'

    expect(page).not_to have_css '.todos li', text: 'Buy car'
  end
end