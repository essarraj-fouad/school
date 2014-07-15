require "rails_helper"

describe "Classroom" do
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

  it "should create classrooms" do
    visit new_classroom_path
    within("#new_classroom") do
      select("Kindergarten", from: "Level")
      select("A", from: "Sublevel")
      select "Afternoon", from: "Period"
    end
    click_on("Create Classroom")
    expect(page).to have_content "Classroom saved"
  end
end
