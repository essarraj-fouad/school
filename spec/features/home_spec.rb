require "rails_helper"

describe "Home" do
  before { sign_up }
  it "should have links" do
    visit root_path
    within("#container") do
      expect(page).to have_content "Create Classroom"
      expect(page).to have_content "Create Student"
      expect(page).to have_content "Create Teacher"
      expect(page).to have_content "Sign out"
    end
  end
end
