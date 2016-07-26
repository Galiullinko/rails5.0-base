require "rails_helper"

feature "Sign in" do
  scenario "Sign in with correct credentials" do
    visit "/users/sign_in/"
    fill_in "user_email", :with => "galiullinko@gmail.com"
    fill_in "user_password", :with => "123456"
    save_and_open_page
    click_button "Log in"
    expect(page).to have_content "Home"
  end
end
