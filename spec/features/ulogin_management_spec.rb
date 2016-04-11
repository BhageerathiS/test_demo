require "rails_helper"

RSpec.feature "Ulogin management", :type => :feature do
  scenario "User creates a new ulogin" do
    visit "/ulogins"

    fill_in "Name", :with => "Admin"
    fill_in "Emali", :with => "abcde@gmail.com"
    fill_in "Password", :with => "Password"
    click_button "Create Ulogin"

    expect(page).to have_text("Login was successfully created.")
  end
end