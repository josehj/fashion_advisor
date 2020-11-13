require "application_system_test_case"

class FashionStyleGarmentsTest < ApplicationSystemTestCase
  setup do
    @fashion_style_garment = fashion_style_garments(:one)
  end

  test "visiting the index" do
    visit fashion_style_garments_url
    assert_selector "h1", text: "Fashion Style Garments"
  end

  test "creating a Fashion style garment" do
    visit fashion_style_garments_url
    click_on "Nueva Prenda por Estilo de moda"

    fill_in "Fashion style", with: @fashion_style_garment.fashion_style_id
    fill_in "Garment type", with: @fashion_style_garment.garment_type_id
    click_on "Create Fashion style garment"

    assert_text "Fashion style garment was successfully created"
    click_on "Back"
  end

  test "updating a Fashion style garment" do
    visit fashion_style_garments_url
    click_on "Edit", match: :first

    fill_in "Category", with: @fashion_style_garment.category
    fill_in "Fashion style", with: @fashion_style_garment.fashion_style_id
    fill_in "Garment type", with: @fashion_style_garment.garment_type_id
    fill_in "Name", with: @fashion_style_garment.name
    click_on "Update Fashion style garment"

    assert_text "Fashion style garment was successfully updated"
    click_on "Back"
  end

  test "destroying a Fashion style garment" do
    visit fashion_style_garments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fashion style garment was successfully destroyed"
  end
end
