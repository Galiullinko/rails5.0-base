require "rails_helper"

feature "Sign out as user" do
  include_context "user signed in"

  scenario "Sign out" do
    visit(root_path)
    click_link "Sign out"
    expect(page).to have_content "Sign in"
  end
end
