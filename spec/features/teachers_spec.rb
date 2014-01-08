require "spec_helper"

describe "Student" do
  before do
    Classroom.create(level: "Primeira Série", sublevel: "A", period: "Tarde")
    visit new_teacher_path
  end

  it "should create a teacher" do
    within("#new_teacher") do
      fill_in "teacher_name", with: "Linus Torvalds"
      select "Primeira Série", from: "teacher_classroom_id"
      select "Matemática", from: "teacher_subjects_attributes_0_name"
    end
    click_on("Adicionar Professor")
    expect(page).to have_content "Professor cadastrado com sucesso"
  end
end
