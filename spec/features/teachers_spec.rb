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

  it "should create a teacher" do
    create_classroom
    visit new_teacher_path
    within("#new_teacher") do
      fill_in "teacher_name", with: "Linus Torvalds"
      select "Primeira Série", from: "teacher_classroom_id"
      select "Matemática", from: "teacher_subjects_attributes_0_name"
    end
    click_on("Adicionar Professor")
    expect(page).to have_content "Professor cadastrado com sucesso"
  end
end
