require "rails_helper"

RSpec.feature "Creating Articles" do
  scenario "A user creates a new article" do
    #Visit Root page
    visit "/"
    #Click on New Articles
    click_link "New Article"
    #Fill in the Title
    fill_in "Title", with: "Creating a Blog"
    #Fill in the body
    fill_in "Body", with: "Lorem Ipsum"
    #Create Article
    click_button "Create Article"
    
    #Article is Created
    expect(page).to have_content("Article has been created")
    #Articles Path
    expect(page.current_path).to eq(articles_path)
  end

  scenario "A user fails to create a new article" do
    #Visit Root page
    visit "/"
    #Click on New Articles
    click_link "New Article"
    #Fill in the Title
    fill_in "Title", with: ""
    #Fill in the body
    fill_in "Body", with: ""
    #Create Article
    click_button "Create Article"

    expect(page).to have_content("Article has not been created")
    expect(page).to have_content("Title can't be blank")
    expect(page).to have_content("Body can't be blank")
  end
end
