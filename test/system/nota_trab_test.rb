require "application_system_test_case"

class NotaTrabTest < ApplicationSystemTestCase
  setup do
    @nota_trab = nota_trab(:one)
  end

  test "visiting the index" do
    visit nota_trab_url
    assert_selector "h1", text: "Nota Trab"
  end

  test "creating a Nota trab" do
    visit nota_trab_url
    click_on "New Nota Trab"

    fill_in "Aluno", with: @nota_trab.aluno_id
    fill_in "Disciplina", with: @nota_trab.disciplina_id
    fill_in "Nota", with: @nota_trab.nota
    fill_in "Professor", with: @nota_trab.professor_id
    click_on "Create Nota trab"

    assert_text "Nota trab was successfully created"
    click_on "Back"
  end

  test "updating a Nota trab" do
    visit nota_trab_url
    click_on "Edit", match: :first

    fill_in "Aluno", with: @nota_trab.aluno_id
    fill_in "Disciplina", with: @nota_trab.disciplina_id
    fill_in "Nota", with: @nota_trab.nota
    fill_in "Professor", with: @nota_trab.professor_id
    click_on "Update Nota trab"

    assert_text "Nota trab was successfully updated"
    click_on "Back"
  end

  test "destroying a Nota trab" do
    visit nota_trab_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nota trab was successfully destroyed"
  end
end
