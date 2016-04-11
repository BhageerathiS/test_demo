require "rails_helper"

RSpec.feature "Comment management", :type => :feature do
  scenario "User creates a new comment" do
    visit "/comments/new"

    fill_in "Commenter", :with => "user"
    fill_in "Body", :with => "abcdefgh"
    fill_in "Aricle", :with => "Aricle"
    click_button "Create Comment"

    expect(page).to have_text("Comment was successfully created.")
  end
end