require 'test_helper'

class FashionStyleGarmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fashion_style_garment = fashion_style_garments(:one)
  end

  test "should get index" do
    get fashion_style_garments_url
    assert_response :success
  end

  test "should get new" do
    get new_fashion_style_garment_url
    assert_response :success
  end

  test "should create fashion_style_garment" do
    assert_difference('FashionStyleGarment.count') do
      post fashion_style_garments_url, params: { fashion_style_garment: { garment_type_id: @fashion_style_garment.garment_type_id, fashion_style_id: @fashion_style_garment.fashion_style_id, name: @fashion_style_garment.name } }
    end

    assert_redirected_to fashion_style_garment_url(FashionStyleGarment.last)
  end

  test "should show fashion_style_garment" do
    get fashion_style_garment_url(@fashion_style_garment)
    assert_response :success
  end

  test "should get edit" do
    get edit_fashion_style_garment_url(@fashion_style_garment)
    assert_response :success
  end

  test "should update fashion_style_garment" do
    patch fashion_style_garment_url(@fashion_style_garment), params: { fashion_style_garment: { garment_type_id: @fashion_style_garment.garment_type_id, fashion_style_id: @fashion_style_garment.fashion_style_id, name: @fashion_style_garment.name } }
    assert_redirected_to fashion_style_garment_url(@fashion_style_garment)
  end

  test "should destroy fashion_style_garment" do
    assert_difference('FashionStyleGarment.count', -1) do
      delete fashion_style_garment_url(@fashion_style_garment)
    end

    assert_redirected_to fashion_style_garments_url
  end
end
