require 'rails_helper'

feature 'user see owns todos' do
  scenario 'successfully' do
    driver = User.create!(email: 'driver@example.com')
    todo = Todo.new(title: "Buy car")
    todo.user = driver
    todo.save

    sign_in_as 'someone_else@example.com'
    expect(page).not_to display_todo('Buy car')
  end
end
