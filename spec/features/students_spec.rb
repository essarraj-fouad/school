require "spec_helper"

describe "Student" do
  before do
    Classroom.create(level: "Primeira Série", sublevel: "A", period: "Tarde")
    visit new_student_path
  end

  it "should create a student" do
    within("#new_student") do
      fill_in "student_name", with: "Diego Viola"
      select "Primeira Série", from: "student_classroom_id"
    end
    click_on("Adicionar Aluno")
    expect(page).to have_content "Aluno cadastrado com sucesso"
  end
end
