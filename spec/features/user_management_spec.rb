require "rails_helper"

feature "User management", :type => :feature do
  scenario "User creates a new user" do
    visit "/users/new"

    fill_in "Name", :with => "Admin"
    fill_in "Email", :with => "abcdefgh@gmail.com"
    click_button "Create User"

    expect(page).to have_text("User was successfully created.")
  end
end