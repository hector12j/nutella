require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get product_create_url
    assert_response :success
  end

  test "should get update" do
    get product_update_url
    assert_response :success
  end

  test "should get delete" do
    get product_delete_url
    assert_response :success
  end

  test "should get find" do
    get product_find_url
    assert_response :success
  end

end
