require "rails_helper"

feature "Change user's information", js: true do
  include_context "user signed in"

  scenario "Change name" do
    visit edit_user_registration_path

    fill_in("user_full_name", with: "Sosi Pisosovich")
    fill_in("user_password", with: user.password)
    fill_in("user_password_confirmation", with: user.password)
    save_and_open_screenshot
    click_button "Update"
    save_and_open_screenshot
    expect(user.full_name).to eq("Sosi Pisosovich")
  end
end
