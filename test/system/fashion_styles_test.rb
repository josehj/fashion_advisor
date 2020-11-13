require "application_system_test_case"

class FashionStylesTest < ApplicationSystemTestCase
  setup do
    @fashion_style = fashion_styles(:one)
  end

  test "visiting the index" do
    visit fashion_styles_url
    assert_selector "h1", text: "Fashion Styles"
  end

  test "creating a Fashion style" do
    visit fashion_styles_url
    click_on "Nuevo Estilo de moda"

    fill_in "Name", with: @fashion_style.name
    click_on "Create Fashion style"

    assert_text "Fashion style was successfully created"
    click_on "Back"
  end

  test "updating a Fashion style" do
    visit fashion_styles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @fashion_style.name
    click_on "Update Fashion style"

    assert_text "Fashion style was successfully updated"
    click_on "Back"
  end

  test "destroying a Fashion style" do
    visit fashion_styles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fashion style was successfully destroyed"
  end
end
