require "application_system_test_case"

class BodyGarmentsTest < ApplicationSystemTestCase
  setup do
    @body_garment = body_garments(:one)
  end

  test "visiting the index" do
    visit body_garments_url
    assert_selector "h1", text: "Atributo por Cuerpos"
  end

  test "creating a Atributo por Cuerpo" do
    visit body_garments_url
    click_on "Nuevo Atributo por Cuerpo"

    fill_in "Body", with: @body_garment.body
    fill_in "Garment type", with: @body_garment.garment_type_id
    click_on "Create Atributo por Cuerpo"

    assert_text "Atributo por Cuerpo was successfully created"
    click_on "Back"
  end

  test "updating a Atributo por Cuerpo" do
    visit body_garments_url
    click_on "Edit", match: :first

    fill_in "Body", with: @body_garment.body
    fill_in "Garment type", with: @body_garment.garment_type_id
    click_on "Update Atributo por Cuerpo"

    assert_text "Atributo por Cuerpo was successfully updated"
    click_on "Back"
  end

  test "destroying a Atributo por Cuerpo" do
    visit body_garments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atributo por Cuerpo was successfully destroyed"
  end
end
