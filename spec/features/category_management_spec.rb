require "rails_helper"

RSpec.feature "Category management", :type => :feature do
  scenario "User creates a new category" do
    visit "/categories/new"

    fill_in "Name", :with => "Admin"
    
    click_button "Create Category"

    expect(page).to have_text("Category was successfully created.")
  end
end