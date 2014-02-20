require "spec_helper"

describe "Classroom" do
  it "should create classrooms" do
    visit new_classroom_path
    within("#new_classroom") do
      select("Kindergarten", from: "classroom_level")
      select("A", from: "classroom_sublevel")
      select "Afternoon", from: "classroom_period"
    end
    click_on("Create Classroom")
    expect(page).to have_content "Classroom saved"
  end
end
