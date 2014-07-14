module AuthHelper
  def sign_up
    visit new_user_registration_path
    fill_in "Email", with: "foo@bar.org"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
  end
end
RSpec.configuration.include AuthHelper
