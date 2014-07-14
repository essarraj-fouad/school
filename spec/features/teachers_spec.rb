require "rails_helper"

describe "Student" do
  before do
    sign_up
    Classroom.create(level: "Second grade", sublevel: "A", period: "Afternoon")
    visit new_teacher_path
  end

  it "should create a teacher" do
    within("#new_teacher") do
      fill_in "Name", with: "Linus Torvalds"
      select "Second grade", from: "teacher_classroom_id"
      select "Maths", from: "teacher_subjects_attributes_0_name"
    end
    click_on("Create Teacher")
    expect(page).to have_content "Teacher saved"
  end
end
