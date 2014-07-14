require "rails_helper"

describe "Classroom" do
  before { sign_up }
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
