require "spec_helper"

describe "Student" do
  before do
    Classroom.create(level: "Second grade", sublevel: "A", period: "Afternoon")
    visit new_student_path
  end

  it "should create a student" do
    within("#new_student") do
      fill_in "Name", with: "Diego Viola"
      select "Second grade", from: "student_classroom_id"
    end
    click_on("Create Student")
    expect(page).to have_content "Student saved"
  end
end
