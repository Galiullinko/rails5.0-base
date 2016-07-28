require "rails_helper"

feature "Sign in" do
  let(:user) { create :user }

  scenario "with correct credentials" do
    visit new_user_session_path

    fill_in("user_email", with: user.email)
    fill_in("user_password", with: user.password)

    click_on "Log in"

    expect(page).to have_content "Home"
  end

  scenario "with wrong credentials" do
    visit new_user_session_path

    fill_in("user_email", with: user.email)
    fill_in("user_password", with: "sosipisos")

    click_on "Log in"

    expect(page).to have_content "Log in"
  end
end
