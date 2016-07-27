require "rails_helper"

feature "Sign out as user" do
  scenario "Sign out" do
    visit("/")
    click_button "Sign out"
    expect(user).to have_content "Sign in"
  end
end
