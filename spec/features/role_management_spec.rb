require "rails_helper"

RSpec.feature "Comment management", :type => :feature do
  scenario "User creates a new role" do
    visit "/roles/new"

    fill_in "Name", :with => "user"
  
    click_button "Create Role"

    expect(page).to have_text("Role was successfully created.")
  end
end