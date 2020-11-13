require "application_system_test_case"

class GarmentAttributesTest < ApplicationSystemTestCase
  setup do
    @garment_attribute = garment_attributes(:one)
  end

  test "visiting the index" do
    visit garment_attributes_url
    assert_selector "h1", text: "Garment Attributes"
  end

  test "creating a Garment attribute" do
    visit garment_attributes_url
    click_on "New Garment Attribute"

    fill_in "Name", with: @garment_attribute.name
    fill_in "Type", with: @garment_attribute.type
    click_on "Create Garment attribute"

    assert_text "Garment attribute was successfully created"
    click_on "Back"
  end

  test "updating a Garment attribute" do
    visit garment_attributes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @garment_attribute.name
    fill_in "Type", with: @garment_attribute.type
    click_on "Update Garment attribute"

    assert_text "Garment attribute was successfully updated"
    click_on "Back"
  end

  test "destroying a Garment attribute" do
    visit garment_attributes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Garment attribute was successfully destroyed"
  end
end
