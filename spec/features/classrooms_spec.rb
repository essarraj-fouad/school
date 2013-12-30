require "spec_helper"

describe Classroom do
  it "should create classrooms" do
    visit "/classrooms/new"
    within("#new_classroom") do
      select("Primeira Série", from: "classroom_level")
      select("A", from: "classroom_sublevel")
    end
    click_on("Adicionar Classe")
    expect(page).to have_content "Classe cadastrada com sucesso"
  end
end
