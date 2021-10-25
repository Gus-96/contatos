require "application_system_test_case"

class GenerosTest < ApplicationSystemTestCase
  setup do
    @genero = generos(:one)
  end

  test "visiting the index" do
    visit generos_url
    assert_selector "h1", text: "Generos"
  end

  test "creating a Genero" do
    visit generos_url
    click_on "New Genero"

    fill_in "Nome", with: @genero.nome
    click_on "Create Genero"

    assert_text "Genero was successfully created"
    click_on "Back"
  end

  test "updating a Genero" do
    visit generos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @genero.nome
    click_on "Update Genero"

    assert_text "Genero was successfully updated"
    click_on "Back"
  end

  test "destroying a Genero" do
    visit generos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Genero was successfully destroyed"
  end
end
