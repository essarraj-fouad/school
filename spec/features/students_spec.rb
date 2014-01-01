require "spec_helper"

describe "Student" do
  def create_classroom
    visit new_classroom_path
    within("#new_classroom") do
      select("Primeira Série", from: "classroom_level")
      select("A", from: "classroom_sublevel")
      select "Tarde", from: "classroom_period"
    end
    click_on("Adicionar Classe")
    expect(page).to have_content "Classe cadastrada com sucesso"
  end

  it "should create a student" do
    create_classroom
    visit new_student_path
    within("#new_student") do
      fill_in "student_name", with: "Diego Viola"
      select "Primeira Série", from: "student_classroom_id"
    end
    click_on("Adicionar Aluno")
    expect(page).to have_content "Aluno cadastrado com sucesso"
  end
end
