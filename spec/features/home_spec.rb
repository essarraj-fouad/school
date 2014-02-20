require "spec_helper"

describe "Home" do
  it "should have links" do
    visit root_path
    within("#container") do
      expect(page).to have_content "Create Classroom"
      expect(page).to have_content "Create Student"
      expect(page).to have_content "Create Teacher"
    end
  end
end
