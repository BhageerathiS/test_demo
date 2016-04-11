require "rails_helper"





feature "Article management", :type => :feature do
  

  scenario "User creates a new article" do
    visit "/articles/new"

    fill_in "Title", :with => "My Article"
    fill_in "Content", :with => "Article"
    fill_in "Created by", :with => "Admin"
    click_button "Create Article"

    expect(page).to have_text("Article was successfully created.")

    click_link "Back"
  end




  scenario "User Editing Article" do
    id = Article.last.id
    visit "/articles/#{id}/edit"

    fill_in "Title", :with => "Article"
    fill_in "Content", :with => "Updated Article"
    fill_in "Created by", :with => "User66"
    click_button "Update Article"

    expect(page).to have_text("Article was successfully updated.")
  end

  
end











#http://localhost:3000/articles/8/edit