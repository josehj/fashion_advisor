require 'test_helper'

class GarmentAttributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @garment_attribute = garment_attributes(:one)
  end

  test "should get index" do
    get garment_attributes_url
    assert_response :success
  end

  test "should get new" do
    get new_garment_attribute_url
    assert_response :success
  end

  test "should create garment_attribute" do
    assert_difference('GarmentAttribute.count') do
      post garment_attributes_url, params: { garment_attribute: { name: @garment_attribute.name, kind: @garment_attribute.kind } }
    end

    assert_redirected_to garment_attribute_url(GarmentAttribute.last)
  end

  test "should show garment_attribute" do
    get garment_attribute_url(@garment_attribute)
    assert_response :success
  end

  test "should get edit" do
    get edit_garment_attribute_url(@garment_attribute)
    assert_response :success
  end

  test "should update garment_attribute" do
    patch garment_attribute_url(@garment_attribute), params: { garment_attribute: { name: @garment_attribute.name, kind: @garment_attribute.kind } }
    assert_redirected_to garment_attribute_url(@garment_attribute)
  end

  test "should destroy garment_attribute" do
    assert_difference('GarmentAttribute.count', -1) do
      delete garment_attribute_url(@garment_attribute)
    end

    assert_redirected_to garment_attributes_url
  end
end
