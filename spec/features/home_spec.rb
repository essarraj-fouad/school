require "spec_helper"

describe "Home" do
  it "should have links" do
    visit root_path
    within("#container") do
      expect(page).to have_content "Adicionar Classes"
      expect(page).to have_content "Adicionar Alunos"
      expect(page).to have_content "Adicionar Professores"
    end
  end
end
