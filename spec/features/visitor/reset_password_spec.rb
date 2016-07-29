require "rails_helper"

feature "Password Reset" do
  let(:new_password) { "sosipisos" }
  let!(:user) { create :user }

  scenario "Visitor resets his password" do
    visit new_user_password_path

    fill_in "Email", with: user.email
    click_button "Send me reset password instructions"

    open_email(user.email)

    expect(current_email).to have_subject("Reset password instructions")
    expect(current_email).to have_body_text(user.full_name)

    visit_in_email("Change my password")
    update_password

    expect(page).to have_content("Home")
  end

  def update_password
    fill_in "Password", with: new_password
    fill_in "Password confirmation", with: new_password
    click_button "Update password"
  end
end
