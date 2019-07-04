require 'test_helper'

class ProductCategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get product_category_create_url
    assert_response :success
  end

  test "should get update" do
    get product_category_update_url
    assert_response :success
  end

  test "should get delete" do
    get product_category_delete_url
    assert_response :success
  end

  test "should get find" do
    get product_category_find_url
    assert_response :success
  end

end
