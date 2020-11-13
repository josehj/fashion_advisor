require "application_system_test_case"

class BodiesTest < ApplicationSystemTestCase
  setup do
    @body = bodies(:one)
  end

  test "visiting the index" do
    visit bodies_url
    assert_selector "h1", text: "Bodies"
  end

  test "creating a Body" do
    visit bodies_url
    click_on "New Body"

    fill_in "Name", with: @body.name
    fill_in "Type", with: @body.type
    click_on "Create Body"

    assert_text "Body was successfully created"
    click_on "Back"
  end

  test "updating a Body" do
    visit bodies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @body.name
    fill_in "Type", with: @body.type
    click_on "Update Body"

    assert_text "Body was successfully updated"
    click_on "Back"
  end

  test "destroying a Body" do
    visit bodies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Body was successfully destroyed"
  end
end
