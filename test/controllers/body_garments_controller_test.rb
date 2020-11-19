require 'test_helper'

class BodyGarmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @body_garment = body_garments(:one)
  end

  test "should get index" do
    get body_garments_url
    assert_response :success
  end

  test "should get new" do
    get new_body_garment_url
    assert_response :success
  end

  test "should create body_garment" do
    assert_difference('BodyGarment.count') do
      post body_garments_url, params: { body_garment: { body: @body_garment.body, garment_type_id: @body_garment.garment_type_id } }
    end

    assert_redirected_to body_garment_url(BodyGarment.last)
  end

  test "should show body_garment" do
    get body_garment_url(@body_garment)
    assert_response :success
  end

  test "should get edit" do
    get edit_body_garment_url(@body_garment)
    assert_response :success
  end

  test "should update body_garment" do
    patch body_garment_url(@body_garment), params: { body_garment: { body: @body_garment.body, garment_type_id: @body_garment.garment_type_id } }
    assert_redirected_to body_garment_url(@body_garment)
  end

  test "should destroy body_garment" do
    assert_difference('BodyGarment.count', -1) do
      delete body_garment_url(@body_garment)
    end

    assert_redirected_to body_garments_url
  end
end
