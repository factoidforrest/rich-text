require "spec_helper"

feature "post management" do
  scenario "User creates a post" do
    visit "/"
    click_link "New Post"
    fill_in "Title", with:"My Post"
    #not doing anything for the post body right now, since it is a bit tough to wait until the javascript loads
    click_button "Create Post"
    expect(page).to have_text("My Post")
  end
end