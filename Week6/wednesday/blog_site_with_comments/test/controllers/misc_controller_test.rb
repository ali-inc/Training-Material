require 'test_helper'

class MiscControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get misc_about_url
    assert_response :success
  end

  test "should get contct" do
    get misc_contct_url
    assert_response :success
  end

  test "should get FAQ" do
    get misc_FAQ_url
    assert_response :success
  end

  test "should get terms" do
    get misc_terms_url
    assert_response :success
  end

  test "should get index" do
    get misc_index_url
    assert_response :success
  end

end
