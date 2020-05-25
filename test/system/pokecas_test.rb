require "application_system_test_case"

class PokecasTest < ApplicationSystemTestCase
  setup do
    @pokeca = pokecas(:one)
  end

  test "visiting the index" do
    visit pokecas_url
    assert_selector "h1", text: "Pokecas"
  end

  test "creating a Pokeca" do
    visit pokecas_url
    click_on "New Pokeca"

    fill_in "Box", with: @pokeca.box_id
    fill_in "Detail", with: @pokeca.detail
    fill_in "Genre", with: @pokeca.genre_id
    fill_in "Image", with: @pokeca.image
    fill_in "Name", with: @pokeca.name
    fill_in "Rare", with: @pokeca.rare_id
    click_on "Create Pokeca"

    assert_text "Pokeca was successfully created"
    click_on "Back"
  end

  test "updating a Pokeca" do
    visit pokecas_url
    click_on "Edit", match: :first

    fill_in "Box", with: @pokeca.box_id
    fill_in "Detail", with: @pokeca.detail
    fill_in "Genre", with: @pokeca.genre_id
    fill_in "Image", with: @pokeca.image
    fill_in "Name", with: @pokeca.name
    fill_in "Rare", with: @pokeca.rare_id
    click_on "Update Pokeca"

    assert_text "Pokeca was successfully updated"
    click_on "Back"
  end

  test "destroying a Pokeca" do
    visit pokecas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pokeca was successfully destroyed"
  end
end
