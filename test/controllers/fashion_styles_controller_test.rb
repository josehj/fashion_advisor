require 'test_helper'

class FashionStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fashion_style = fashion_styles(:one)
  end

  test "should get index" do
    get fashion_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_fashion_style_url
    assert_response :success
  end

  test "should create fashion_style" do
    assert_difference('FashionStyle.count') do
      post fashion_styles_url, params: { fashion_style: { name: @fashion_style.name } }
    end

    assert_redirected_to fashion_style_url(FashionStyle.last)
  end

  test "should show fashion_style" do
    get fashion_style_url(@fashion_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_fashion_style_url(@fashion_style)
    assert_response :success
  end

  test "should update fashion_style" do
    patch fashion_style_url(@fashion_style), params: { fashion_style: { name: @fashion_style.name } }
    assert_redirected_to fashion_style_url(@fashion_style)
  end

  test "should destroy fashion_style" do
    assert_difference('FashionStyle.count', -1) do
      delete fashion_style_url(@fashion_style)
    end

    assert_redirected_to fashion_styles_url
  end
end
