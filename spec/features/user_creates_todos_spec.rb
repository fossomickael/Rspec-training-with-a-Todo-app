require 'rails_helper'

feature 'user create todo' do
  scenario 'successfully' do
    sign_in

    click_on 'Add a new todo'
    fill_in 'Title' , with: 'Buy Milk'
    click_on 'Submit'

    expect(page).to have_css '.todos li', text: 'Buy Milk'
  end
end
