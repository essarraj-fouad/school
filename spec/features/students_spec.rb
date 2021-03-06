require "rails_helper"

describe "Student" do
  before do
    sign_up
    Classroom.create(level: "Second grade", sublevel: "A", period: "Afternoon")
  end

  it "should create a student" do
    visit new_student_path
    within("#new_student") do
      fill_in "Name", with: "Diego Viola"
      select "Second grade", from: "student_classroom_id"
    end
    click_on("Create Student")
    expect(page).to have_content "Student saved"
  end
end
